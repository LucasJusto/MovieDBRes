//
//  GetMoviesRequest.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 10/02/23.
//

import Foundation

class GetMoviesRequest: APIRequest{
    typealias ResponseType = [Movie]
    
    
    func webServiceURL() -> String {
        return "https://api.themoviedb.org/"
    }
    
    func apiVersion() -> String {
        return "3/"
    }
    
    func endPoint() -> String {
        return "movie/now_playing?api_key=dd5a68ffc24d87f1b7ff8161056a315f&page=1"
    }
    
    func requestType() -> HTTPMethod {
        return .get
    }
    
    func contentType() -> String {
        return "application/json"
    }
}
