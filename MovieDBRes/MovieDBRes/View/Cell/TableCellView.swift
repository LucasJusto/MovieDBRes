//
//  TableViewCell.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 08/02/23.
//

import UIKit

class TableCellView: UIView {
    
    lazy var movieImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        
        return label
    }()
    
    lazy var rateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        self.addSubview(self.movieImage)
        self.addSubview(self.titleLabel)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.rateLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.movieImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            self.movieImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            self.movieImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
            self.movieImage.heightAnchor.constraint(equalToConstant: 110),
            self.movieImage.widthAnchor.constraint(equalToConstant: 90),
            
            self.titleLabel.topAnchor.constraint(equalTo: self.movieImage.topAnchor, constant: 8),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.movieImage.trailingAnchor, constant: 4),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),

            self.descriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 8),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor),

            self.rateLabel.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 8),
            self.rateLabel.leadingAnchor.constraint(equalTo: self.titleLabel.leadingAnchor),
            self.rateLabel.trailingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor)
        ])
    }
}
