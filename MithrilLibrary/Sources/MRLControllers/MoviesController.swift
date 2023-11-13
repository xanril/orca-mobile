//
//  MoviesController.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import MRLBusinessModels
import MRLControllerProtocols
import MRLDataServiceProtocols

public struct MoviesController: MoviesControllerProtocol {
 
    // MARK: Fields
    private let dataService: MovieDataServiceProtocol
    
    // MARK: - Constructor
    public init(dataService: MovieDataServiceProtocol) {
        self.dataService = dataService
    }
    
    // MARK: - Methods
    public func getPopularMovies(page: Int?) async throws -> [PopularMovieBusinessModel] {
        do {
            let movies = try await dataService.getPopularMovies(page: page)
            let results = movies.map { movie in
                PopularMovieBusinessModel(
                    title: movie.title, 
                    posterImageUrl: movie.posterPath,
                    backgrounImageUrl: movie.backdropPath)
            }
            
            return results
        }
        catch {
            
        }
        
        return [PopularMovieBusinessModel]()
    }
}
