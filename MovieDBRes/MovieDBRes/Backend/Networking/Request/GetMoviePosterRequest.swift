//
//  GetMoviePosterRequest.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 12/02/23.
//

import Foundation
import UIKit

class GetMoviePosterRequest: APIRequest{
    
    typealias ResponseType = UIImage
    
    func webServiceURL() -> String {
        return "https://image.tmdb.org/"
    }
    
    func apiVersion() -> String {
        return "t/"
    }
    
    func apiResource() -> String {
        return "p/"
    }
    
    func endPoint(urlParams: String?) -> String {
        return "w500\(urlParams ?? "")"
    }
    
    func requestType() -> HTTPMethod {
        return .get
    }
    
    func contentType() -> String {
        return "application/json"
    }
}
