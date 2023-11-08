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
    var movieActors:String
    var movieLocation:String
    var movieRating:String
    var movieDirector:String
    
    init(movieName: String, movieImage: String, movieYear: Int, movieActors: String, movieLocation: String, movieRating: String, movieDirector: String) {
        self.movieName = movieName
        self.movieImage = movieImage
        self.movieYear = movieYear
        self.movieActors = movieActors
        self.movieLocation = movieLocation
        self.movieRating = movieRating
        self.movieDirector = movieDirector
    }

}
