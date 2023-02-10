//
//  DetailsViewModel.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 09/02/23.
//

import UIKit

class DetailsViewModel {
    
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
        return UIImage(systemName: "film")!
    }
    
}
