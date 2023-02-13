//
//  TableCellViewModel.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

class TableCellViewModel: NSObject {
    var movieService: MovieService = MovieService()
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    public func getTitle() -> String {
        return movie.title
    }
    
    public func getDescription() -> String {
        return movie.description
    }
    
    public func getRate() -> String{
        return "⭐️ \(movie.rate)"
    }
    
    public func getImage() -> UIImage{
        var imageRet = UIImage(systemName: "film")!
        let semaphore = DispatchSemaphore(value: 0)
        movieService.getPosterByPath(posterPath: movie.imagePath) { image in
            imageRet = image
            semaphore.signal()
        }
        semaphore.wait()
        return imageRet
    }
}
