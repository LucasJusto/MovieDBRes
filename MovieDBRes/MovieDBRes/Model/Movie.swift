//
//  Movie.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

struct Movie: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String
    var rate: Double
    var imagePath: String
}
