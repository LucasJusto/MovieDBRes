//
//  HomeCoordinator.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 12/02/23.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func showDetails(movie: Movie){
        let vc = DetailsViewController(movie: movie)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}

