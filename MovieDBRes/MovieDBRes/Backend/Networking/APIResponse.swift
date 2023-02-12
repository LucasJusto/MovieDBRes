//
//  APIResponse.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 10/02/23.
//

import Foundation

protocol APIResponse<ResponseType> {
    associatedtype ResponseType: Codable
    
    var rawData: Foundation.Data? { get set }
    var success: Bool? { get set }
    var error: Error? { get set }
    
    func getData() -> ResponseType
    func setRawData(rawData: Foundation.Data) -> Void
    func setSuccess(success: Bool) -> Void
    func setError(error: Error) -> Void
}
