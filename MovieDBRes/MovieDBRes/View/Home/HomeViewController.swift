//
//  ViewController.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 07/02/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreenView?
    
    var viewModel: TableViewViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.screen = HomeScreenView()
        self.viewModel = TableViewViewModel()
        self.viewModel?.loadMovies()
        self.screen?.tableView.delegate = self
        self.screen?.tableView.dataSource = self
        self.view = screen
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Details
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel?.getMoviesSize() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieForRow: Movie = viewModel?.getMovieForRow(row: indexPath.row) ?? Movie(id: 0, title: "No Movie", description: "No Description", rate: 0.0, imagePath: "")
        let cell: TableViewCell = TableViewCell(style: .default, reuseIdentifier: "TableViewCell")
        cell.viewModel = TableCellViewModel(movie: movieForRow)
        cell.configView()
        return cell
    }
    
    
}

