//
//  iTunesResult.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

public class iTunesResult: Codable {
    
    /// The name of the object returned by the search request.
    public let wrapperType: WrapperType
    
    /// The kind of content returned by the search request.
    public let kind: KindType
    
    /// The name of the track, song, video, TV episode, and so on returned by the search request.
    public let trackName: String
    
    /// The name of the artist returned by the search request.
    public let artistName: String
    
    /// The name of the album, TV season, audiobook, and so on returned by the search request.
    public let collectionName: String?
    
    /// A URL for the artwork associated with the returned media type, sized to 100×100 pixels or 60×60 pixels.
    public let artworkUrl100: URL?
    
    /// A URL for the artwork associated with the returned media type, sized to 100×100 pixels or 60×60 pixels.
    public let artworkUrl60: URL?
    
    public let isStreamable: Bool?
}
