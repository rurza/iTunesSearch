//
//  iTunesClient.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation
import Combine


public protocol iTunesClientCacheProvider: class {
    func cachedResponseForRequest<Resource: iTunesResult>(_ request: URLRequest) -> iTunesResponse<Resource>?
    func saveResponse<Resource: iTunesResult>(_ response: iTunesResponse<Resource>, forRequest req: URLRequest)
}

public final class iTunesClient {
    
    public static let shared = iTunesClient()
    public var session = URLSession.shared
    
    public init() { }
    
    weak var cacheProvider: iTunesClientCacheProvider?
    
    public func searchForSong(withTitle title: String, from artist: String) -> AnyPublisher<iTunesResponse<iTunesTrackResult>, Error> {
        let components = iTunesSearchURLComponents<Music>(term: "\(artist) \(title)")
        let url = components.url!
        let request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 15)
        return makeRequestPublisher(request, useCache: true)
    }
    
    
    fileprivate func makeRequestPublisher<Item>(_ request: URLRequest,
                                                useCache: Bool = true) -> AnyPublisher<iTunesResponse<Item>, Error> where Item: iTunesResult {
        if let r = cacheProvider?.cachedResponseForRequest(request) as iTunesResponse<Item>?, useCache {
            return Future<iTunesResponse<Item>, Error> { future in
                future(.success(r))
            }.eraseToAnyPublisher()
        }
        return session
            .dataTaskPublisher(for: request)
            .tryMap {
                let decoder = JSONDecoder()
                if let serviceError = try? decoder.decode(iTunesError.self, from: $0.data) {
                    let error = serviceError.errorMessage
                    
                    throw NSError(domain: "iTunesSearchErrorDomain",
                                  code: ($0.response as! HTTPURLResponse).statusCode,
                                  userInfo: [NSLocalizedDescriptionKey: error])
                }
                return $0.data
        }
        .decode(type: iTunesResponse<Item>.self, decoder: JSONDecoder())
        .map {
            self.cacheProvider?.saveResponse($0, forRequest: request)
            return $0
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
    
}

