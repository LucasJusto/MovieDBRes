//
//  HomeScreenView.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 08/02/23.
//

import UIKit

class HomeScreenView: UIView {
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.backgroundColor = .systemPink
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableView)
        
        self.configConstraints()
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.tableView.topAnchor.constraint(equalTo: self.topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
