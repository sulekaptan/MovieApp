//
//  Movie.swift
//  MovieApp
//
//  Created by Şule Kaptan on 7.11.2023.
//

import Foundation

class Movie {
    
    var movieName:String
    var movieImage:String
    var movieYear:Int
    var movieDescription:String
    
    init(movieName: String, movieImage: String, movieYear: Int, movieDescription: String) {
        self.movieName = movieName
        self.movieImage = movieImage
        self.movieYear = movieYear
        self.movieDescription = movieDescription
    }
}
