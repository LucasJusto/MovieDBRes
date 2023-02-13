//
//  DetailsViewController.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 09/02/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    weak var coordinator: HomeCoordinator?
    private let movie: Movie
    var screen: DetailsUIView?
    var viewModel: DetailsViewModel?
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    override func loadView() {
        self.viewModel = DetailsViewModel(movie: movie)
        self.screen = DetailsUIView()
        self.screen?.viewModel = viewModel
        self.screen?.configView()
        self.view = screen
    }
    
}
