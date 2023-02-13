//
//  GetMoviesResponse.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 12/02/23.
//

import Foundation

class GetMoviesResponse: APIResponse {
    
    typealias ResponseType = [Movie]
    
    var rawData: Data?
    
    var success: Bool?
    
    var error: Error?
    
    
    func setRawData(rawData: Data) {
        self.rawData = rawData
    }
    
    func setSuccess(success: Bool) {
        self.success = success
    }
    
    func setError(error: Error) {
        self.error = error
    }
    
    func getData() -> [Movie] {
        var movieList = [Movie]()
        
        guard let data = rawData,
              let json = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as? [String: Any],
              let movies = json["results"] as? [[String: Any]]
        else {
            return []
        }
        
        for movie in movies {
            let title = movie["title"] as? String
            let rate = movie["vote_average"] as? Double
            let overview = movie["overview"] as? String
            let posterPath = movie["poster_path"] as? String
            movieList.append(Movie(id: 0, title: title ?? "No Title", description: overview ?? "No Description", rate: rate ?? 0.0, imagePath: posterPath ?? ""))
        }
        return movieList
    }
    
}
