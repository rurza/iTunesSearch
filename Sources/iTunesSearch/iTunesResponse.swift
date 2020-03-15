//
//  iTunesResponse.swift
//  
//
//  Created by Adam Różyński on 15/03/2020.
//

import Foundation

public class iTunesResponse<Result: iTunesResult>: Codable {
    public let resultCount: Int
    public let results: [Result]
}
