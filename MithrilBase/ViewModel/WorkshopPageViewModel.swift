//
//  WorkshopPageViewModel.swift
//  OrcaMobile
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation
import MRLBusinessModels
import MRLControllerProtocols
import Factory

class WorkshopPageViewModel: ObservableObject {
    
    // MARK: - Fields
    @Injected(\.moviesController)
    private var moviesController: MoviesControllerProtocol
    
    // MARK: - Properties
    @Published var popularMovies: [PopularMovieBusinessModel]
    
    // MARK: - Constructor
    init() {
        self.popularMovies = [PopularMovieBusinessModel]()
    }
    
    // MARK: - Methods
    public func getPopularMoviesAsync(page:Int?) async -> Void {
        do {
            let results = try await moviesController.getPopularMovies(page: page);
            DispatchQueue.main.async {
                self.popularMovies = results;
            }
        }
        catch {
            
        }
    }
}
