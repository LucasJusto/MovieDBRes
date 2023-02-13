//
//  GetMoviePosterResponse.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 12/02/23.
//

import Foundation
import UIKit

class GetMoviePosterResponse: APIResponse {
    
    typealias ResponseType = UIImage
    
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
    
    func getData() -> UIImage {
        guard let data = rawData,
              let movieImage = UIImage(data: data)
        else {
            return UIImage(systemName: "film")!
        }
        
        return movieImage
    }
    
}
