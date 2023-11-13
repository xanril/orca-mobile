//
//  PopularMovieBusinessModel.swift
//
//
//  Created by Kristian Mitra on 11/13/23.
//

import Foundation

public struct PopularMovieBusinessModel {
    
    // MARK: - Fields
    public let title: String
    public let posterImageUrl: URL?
    public let backgrounImageUrl: URL?
    
    // MARK: - Constructor
    public init(title: String, posterImageUrl: URL?, backgrounImageUrl: URL?) {
        self.title = title
        self.posterImageUrl = posterImageUrl
        self.backgrounImageUrl = backgrounImageUrl
    }
}
