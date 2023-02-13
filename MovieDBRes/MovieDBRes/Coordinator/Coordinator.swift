//
//  Coordinator.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 12/02/23.
//

import Foundation

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start() 
}
