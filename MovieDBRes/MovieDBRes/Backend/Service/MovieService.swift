//
//  MovieService.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import Foundation
import UIKit

enum Category {
    case popular, now_playing
}

class MovieService {
    let networkApiClient = NetworkApiClient()
    
    func getMovies(completionHandler: @escaping ([Movie]) -> Void) {
        let request: GetMoviesRequest = GetMoviesRequest()
        let response: GetMoviesResponse = GetMoviesResponse()
        networkApiClient.performRequest(request: request, response: response, urlParams: "") { movies in
            completionHandler(movies)
        }
    }
    
    func getPosterByPath(posterPath: String, completionHandler: @escaping (UIImage) -> Void){
        let request: GetMoviePosterRequest = GetMoviePosterRequest()
        let response: GetMoviePosterResponse = GetMoviePosterResponse()
        networkApiClient.performRequest(request: request, response: response, urlParams: posterPath) { poster in
            completionHandler(poster)
        }
    }
    
}
