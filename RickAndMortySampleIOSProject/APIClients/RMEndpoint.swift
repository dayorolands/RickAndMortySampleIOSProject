//
//  RMEndpoint.swift
//  RickAndMortySampleIOSProject
//
//  Created by Dayo Adekoya on 09/11/2023.
//

import Foundation


/// Represents unique API endpoint
@frozen enum RMEndpoint : String {
    /// Endoint to get character info
    case character
    /// Endoint to get location info
    case location
    /// Endoint to get episode info
    case episode
}
