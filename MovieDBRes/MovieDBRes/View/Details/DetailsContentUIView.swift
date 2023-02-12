//
//  DetailsUIView.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 09/02/23.
//

import UIKit

class DetailsContentUIView: UIView {
    
    var viewModel: DetailsViewModel?
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    lazy var movieImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.backgroundColor = .systemPink
        
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 3;
        
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "System", size: 12)
        label.textColor = .gray
        label.numberOfLines = 100
        
        return label
    }()
    
    lazy var rateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "System", size: 8)
        label.textColor = .gray
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
        self.setupScrollView()
        self.configConstraints()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(self.movieImage)
        contentView.addSubview(self.titleLabel)
        contentView.addSubview(self.descriptionLabel)
        contentView.addSubview(self.rateLabel)
    }
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            //MOVIE
            self.movieImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.movieImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            self.movieImage.heightAnchor.constraint(equalToConstant: 195),
            self.movieImage.widthAnchor.constraint(equalToConstant: 130),
            
            //TITLE
            self.titleLabel.leadingAnchor.constraint(equalTo: self.movieImage.trailingAnchor, constant: 16),
            self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            
            //RATE
            self.rateLabel.leadingAnchor.constraint(equalTo: self.movieImage.trailingAnchor, constant: 16),
            self.rateLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 16),
            self.rateLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
            
            //DESCRIPTION
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.descriptionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.descriptionLabel.topAnchor.constraint(equalTo: self.movieImage.bottomAnchor, constant: 30),
            
        ])
    }
    
}
