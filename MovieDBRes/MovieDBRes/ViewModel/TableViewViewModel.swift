//
//  TableViewViewModel.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

class TableViewViewModel: NSObject {
    
    var moviesService: MovieService
    var movies: [Movie]
    
    
    override init() {
        self.moviesService = MovieService()
        self.movies = []
    }
    
    public func loadMovies() {
        let semaphore = DispatchSemaphore(value: 0)
        moviesService.getMovies(category: .now_playing) { movies in
            print(movies)
            self.movies = movies
            semaphore.signal()
        }
        semaphore.wait()
    }
    
    public func getMoviesSize() -> Int {
        return movies.count
    }
    
    public func getMovieForRow(row: Int) -> Movie {
        return movies[row]
    }
}
