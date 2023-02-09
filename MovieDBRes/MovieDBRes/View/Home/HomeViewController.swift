//
//  ViewController.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 07/02/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreenView?
    
    var viewModel: TableViewViewModel = TableViewViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.screen = HomeScreenView()
        self.view = screen
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Details
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.getMoviesSize()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieForRow: Movie = viewModel.getMovieForRow(row: indexPath.row)
        let cell: TableViewCell = TableViewCell(style: .default, reuseIdentifier: "TableViewCell")
        cell.viewModel = TableCellViewModel(movie: movieForRow)
        return cell
    }
    
    
}

