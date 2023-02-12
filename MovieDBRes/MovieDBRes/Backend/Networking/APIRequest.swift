//
//  APIRequest.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 10/02/23.
//

import Foundation

public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}


protocol APIRequest<ResponseType> {
    associatedtype ResponseType: Codable
    
    func webServiceURL() -> String
    
    //optional
    func apiPath() -> String
    
    //optional
    func apiVersion() -> String
    
    //optional
    func apiResource() -> String
    
    func endPoint() -> String
    
    //optional
    func bodyParams() -> NSDictionary?
    
    func requestType() -> HTTPMethod
    
    func contentType() -> String
}

extension APIRequest {
    //it is optional to implement this method when conforming to ApiRequest Protocol
    func apiPath() -> String {
        return ""
    }
    
    //it is optional to implement this method when conforming to ApiRequest Protocol
    func apiVersion() -> String {
        return ""
    }
    
    //it is optional to implement this method when conforming to ApiRequest Protocol
    func apiResource() -> String {
        return ""
    }
    
    //it is optional to implement this method when conforming to ApiRequest Protocol
    func bodyParams() -> NSDictionary? {
        return [:]
    }
}
