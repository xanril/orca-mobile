//
//  TMDbApiClient.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import TMDb

public struct TMDbApiClient {
    
    // MARK: Fields
    let tmdb: TMDbAPI
    
    // MARK: Constructor
    public init(apiKey: String) {
        tmdb = TMDbAPI(apiKey: apiKey);
    }
}
