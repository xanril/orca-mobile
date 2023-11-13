//
//  MovieDataServiceProtocol.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import TMDb

public protocol MovieDataServiceProtocol {
    
    // MARK: - Methods
    func getPopularMovies(page:Int?) async throws -> [Movie]
}
