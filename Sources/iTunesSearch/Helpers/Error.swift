//
//  Error.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

public struct iTunesError: Error, Codable {
    public let errorMessage: String
    public let queryParameters: QueryParameter?
    
    public struct QueryParameter: Codable {
        let output: String
        let callback: String
        let country: String
        let limit: String
        let term: String
        let lang: String
    }
}
