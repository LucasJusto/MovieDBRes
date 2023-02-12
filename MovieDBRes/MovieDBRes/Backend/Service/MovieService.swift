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
    let networkApiClient = NetworkApiClient()
    
    func getMovies(completionHandler: @escaping ([Movie]) -> Void) {
        let request: GetMoviesRequest = GetMoviesRequest()
        let response: GetMoviesResponse = GetMoviesResponse()
        networkApiClient.performRequest(request: request, response: response) { movies in
            completionHandler(movies)
        }
    }
    
}
