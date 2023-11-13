//
//  MithrilBaseApp+Injection.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import MRLControllers
import MRLControllerProtocols
import MRLDataServices
import MRLDataServiceProtocols
import Factory

extension Container {
    
    var dataClient: Factory<DataClientProtocol> {
            Factory(self) { DataClient() }
        }
    
    // MARK: Data Services
    var weatherDataService: Factory<WeatherDataServicing> {
        Factory(self) { WeatherDataService(dataClient: self.dataClient()) }
    }
    
    var moviesDataService: Factory<MovieDataServiceProtocol> {
        Factory(self) { MoviesDataService(tmdbClient: TMDbApiClient(apiKey: Configurations.tmdbApiKey)) }
    }
    
    // MARK: Controllers
    var weatherContoller: Factory<WeatherControlling> {
        Factory(self) { WeatherController(weatherDataService: self.weatherDataService()) }
    }
    
    var moviesController: Factory<MoviesControllerProtocol> {
        Factory(self) { MoviesController(dataService: self.moviesDataService()) }
    }
}
