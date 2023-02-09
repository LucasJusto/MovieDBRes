//
//  MovieService.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import Foundation

enum Category {
    case popular, now_playing
}

class MovieService {
    func getMovies(page: Int = 1, category: Category, completionHandler: @escaping ([Movie]) -> Void){
            var url: URL = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=dd5a68ffc24d87f1b7ff8161056a315f&page=\(page)")!
            
            if category == Category.popular {
                url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=dd5a68ffc24d87f1b7ff8161056a315f&page=\(page)")!
            }
            
            var movieList = [Movie]()
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data,
                      let json = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [String: Any],
                      let movies = json["results"] as? [[String: Any]]
                else {
                    completionHandler([])
                    return
                }
                
                for movie in movies {
                    let title = movie["title"] as? String
                    let rate = movie["vote_average"] as? Float
                    let overview = movie["overview"] as? String
                    let genreIds = movie["genre_ids"] as? [Int]
                    let posterPath = movie["poster_path"] as? String
                    movieList.append(Movie(id: 0, title: title ?? "No Title", description: overview ?? "No Description", rate: rate ?? 0.0, imagePath: posterPath ?? ""))
                }
                completionHandler(movieList)
            }.resume()
        }
}
