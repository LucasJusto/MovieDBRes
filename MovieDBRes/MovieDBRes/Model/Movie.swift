//
//  Movie.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

struct Movie: Identifiable {
    var id: Int
    var title: String
    var description: String
    var rate: Float
    var image: UIImage
}
