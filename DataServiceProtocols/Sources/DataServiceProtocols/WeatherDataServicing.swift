//
//  WeatherDataServicing.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import BusinessModels

public protocol WeatherDataServicing {
    
    func getWeather(city: String, apiKey: String) async -> WeatherBusinessModel
}
