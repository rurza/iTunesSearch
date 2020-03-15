//
//  ResultExplicitness.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

/// The Recording Industry Association of America (RIAA) parental advisory for the content returned by the search request. For more information, see http://itunes.apple.com/WebObjects/MZStore.woa/wa/parentalAdvisory
public enum ResultExplicitness: String, Codable {
    ///explicit lyrics, possibly explicit album cover
    case explicit
    
    ///explicit lyrics “bleeped out”
    case cleaned
    
    ///no explicit lyrics
    case notExplicit
}
