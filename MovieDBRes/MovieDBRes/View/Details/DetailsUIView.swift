//
//  DetailsUIView.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 09/02/23.
//

import UIKit

class DetailsUIView: UIView {
    
    var detailsContentView: DetailsContentUIView = DetailsContentUIView()
    var viewModel: DetailsViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.detailsContentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.detailsContentView)
        self.configConstraints()
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.detailsContentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.detailsContentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.detailsContentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.detailsContentView.topAnchor.constraint(equalTo: self.topAnchor)
        ])
    }
    
    public func configView() {
        self.detailsContentView.titleLabel.text = viewModel?.getTitle()
        self.detailsContentView.descriptionLabel.text = viewModel?.getDescription()
        self.detailsContentView.rateLabel.text = viewModel?.getRate()
        self.detailsContentView.movieImage.image = viewModel?.getImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
