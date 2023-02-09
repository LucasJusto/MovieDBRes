//
//  TableViewViewModel.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

class TableViewViewModel: NSObject {
    var movies: [Movie] = [
        Movie(id: 0, title: "Spider-Man: Far From Home", description: "Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to.", rate: 7.8, imagePath: "film"),
        Movie(id: 1, title: "Spider-Man: Far From Home", description: "Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to.", rate: 7.8, imagePath: "film"),
        Movie(id: 2, title: "Aladdin", description: "A kindhearted street urchin named Aladdin embarks on a magical adventure after finding a lamp that releases a wisecra.", rate: 7.1, imagePath: "film")
    ]
    
    public func getMoviesSize() -> Int {
        return movies.count
    }
    
    public func getMovieForRow(row: Int) -> Movie {
        return movies[row]
    }
}
