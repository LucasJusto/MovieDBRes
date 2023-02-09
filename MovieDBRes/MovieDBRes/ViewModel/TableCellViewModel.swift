//
//  TableCellViewModel.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

class TableCellViewModel: NSObject {
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
        return "\(UIImage(systemName: "star")!) \(movie.rate)"
    }
    
    public func getImage() -> UIImage{
        return movie.image
    }
}
