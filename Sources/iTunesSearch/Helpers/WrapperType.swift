//
//  WrapperType.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

/// The name of the object returned by the search request
public enum WrapperType: String, Codable {
    case track
    case collection
    case artist
}
