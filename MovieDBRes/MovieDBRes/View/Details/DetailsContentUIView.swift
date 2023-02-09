//
//  DetailsUIView.swift
//  MovieDBRes
//
//  Created by Eduarda Soares Serpa Camboim on 09/02/23.
//

import UIKit

class DetailsContentUIView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
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
        self.addSubview(self.titleLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
           
        ])
    }
    
}
