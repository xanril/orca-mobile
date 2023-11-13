//
//  MoviesDataService.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import MRLDataServiceProtocols
import MithrilCoreDataServices
import TMDb

public struct MoviesDataService : MovieDataServiceProtocol {
    
    // MARK: - Fields
    private let client: TMDbApiClient
    
    // MARK: - Constructor
    public init (tmdbClient: TMDbApiClient) {
        self.client = tmdbClient
    }
    
    // MARK: - Methods
    public func getPopularMovies(page:Int? = 0) async throws -> [Movie] {
        do {
            let popularMovies = try await client.tmdb.movies.popular(page: page)
            guard popularMovies.results.isEmpty == false else {
                return [Movie]()
            }
                
            return popularMovies.results
        }
        catch {
            throw DataServiceError.error(ErrorCode.unknown, "Error sending weather request", innerError: error)
        }
    }
}
