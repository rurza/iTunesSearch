//
//  iTunesResponseTrackResult.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

public class iTunesTrackResult: iTunesResult {
    
    public let trackId: Int
    
    public let artistId: Int
    
    public let collectionId: Int?
    
    /// The name of the album, TV season, audiobook, and so on returned by the search request, with objectionable words *’d out.
    ///Note: Artist names are never censored.
    public let trackCensoredName: String
    
    public let collectionCensoredName: String?
    
    public let trackExplicitness: ResultExplicitness?
    
    public let colllectionExplicitness: ResultExplicitness?
    
    /// A URL for the content associated with the returned media type. You can click the URL to view the content in the iTunes Store.
    public let trackViewUrl: URL
    
    /// The returned track’s time in milliseconds.
    public let trackTimeMillis: Double
    
    /// A URL referencing the 30-second preview file for the content associated with the returned media type. .
    public let previewUrl: URL?
    
    /// price in local currency
    public let trackPrice: Float?
    
    /// price for album
    public let collectionPrice: Float?
    
    /// number of discs in collection
    public let discCount: Int?
    
    /// on which disc this track is
    public let discNumber: Int?
    
    /// number of tracks on disc
    public let trackCount: Int?
    
    /// self explanatory
    public let trackNumber: Int?
    
    public let primaryGenreName: String?
    
    
    //MARK: not important until won't compile
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        trackId = try container.decode(Int.self, forKey: .trackId)
        artistId = try container.decode(Int.self, forKey: .artistId)
        collectionId = try? container.decode(Int?.self, forKey: .collectionId)
        trackCensoredName = try container.decode(String.self, forKey: .trackCensoredName)
        collectionCensoredName = try? container.decode(String?.self, forKey: .collectionCensoredName)
        trackExplicitness = try? container.decode(ResultExplicitness?.self, forKey: .trackExplicitness)
        colllectionExplicitness = try? container.decode(ResultExplicitness?.self, forKey: .collectionExplicitness)
        trackViewUrl = try container.decode(URL.self, forKey: .trackViewUrl)
        trackTimeMillis = try container.decode(Double.self, forKey: .trackTimeMillis)
        previewUrl = try? container.decode(URL?.self, forKey: .previewUrl)
        trackPrice = try? container.decode(Float?.self, forKey: .trackPrice)
        collectionPrice = try? container.decode(Float?.self, forKey: .collectionPrice)
        discCount = try? container.decode(Int?.self, forKey: .discCount)
        discNumber = try? container.decode(Int?.self, forKey: .discNumber)
        trackCount = try? container.decode(Int?.self, forKey: .trackCount)
        trackNumber = try? container.decode(Int?.self, forKey: .trackNumber)
        primaryGenreName = try? container.decode(String?.self, forKey: .primaryGenreName)
        try super.init(from: decoder)
    }
    
    private enum CodingKeys: String, CodingKey {
        case trackId
        case artistId
        case collectionId
        case trackCensoredName
        case collectionCensoredName
        case trackExplicitness
        case collectionExplicitness
        case trackViewUrl
        case trackTimeMillis
        case previewUrl
        case trackPrice
        case collectionPrice
        case discCount
        case discNumber
        case trackCount
        case trackNumber
        case primaryGenreName
    }
}
