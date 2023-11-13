//
//  MoviesControllerProtocol.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import MRLBusinessModels

public protocol MoviesControllerProtocol {
    
    // MARK: - Methods
    func getPopularMovies(page:Int?) async throws -> [PopularMovieBusinessModel]
}
