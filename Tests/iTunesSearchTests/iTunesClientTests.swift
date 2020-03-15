//
//  File.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import XCTest
import Combine
@testable import iTunesSearch

class iTunesClientTests: XCTestCase {
    
    let client = iTunesClient()
    var cancellables = Set<AnyCancellable>()
    
    func testSearchForSong() {
        let publisher = client.searchForSong(withTitle: "Sober", from: "Tool")
        let exp = expectation(description: "\(#function)\(#line)")
        publisher.sink(receiveCompletion: { completion in
            switch completion {
            case .failure(let error):
                XCTAssertNotNil(error)
            case .finished:
                ()
            }
            exp.fulfill()
        }) { response in
            print(response)
        }.store(in: &cancellables)
        waitForExpectations(timeout: 15, handler: nil)
    }
    

    static var allTests = [
        ("testSearchForSong", testSearchForSong)
    ]
}
