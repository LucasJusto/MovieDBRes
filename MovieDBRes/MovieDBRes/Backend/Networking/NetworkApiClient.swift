//
//  NetworkApiClient.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 10/02/23.
//

import Foundation

class NetworkApiClient {
    func performRequest<ResponseType>(request: any APIRequest<ResponseType>, response: any APIResponse<ResponseType>, completionHandler: @escaping (ResponseType) -> Void) {
        let urlRequest = urlRequestWith(apiRequest: request)
        URLSession.shared.dataTask(with: urlRequest) { data, res, error in
            guard let data = data
            else {
                return
            }
            response.setRawData(rawData: data)
            completionHandler(response.getData() as! ResponseType)
        }.resume()
    }
    
    func urlRequestWith<ResponseType>(apiRequest: any APIRequest<ResponseType>) -> URLRequest {
        let  completeUrl = apiRequest.webServiceURL() + apiRequest.apiPath() +
        apiRequest.apiVersion() + apiRequest.apiResource() + apiRequest.endPoint()
        
        var urlRequest = URLRequest(url: URL(string: completeUrl)!)
        urlRequest.httpMethod = apiRequest.requestType().rawValue
        urlRequest.setValue(apiRequest.contentType(), forHTTPHeaderField:  "Content-Type")
        if apiRequest.requestType() != .get {
            urlRequest.httpBody = try?JSONSerialization.data(withJSONObject:  apiRequest.bodyParams()!, options: [])
        }
        return urlRequest
    }
}
