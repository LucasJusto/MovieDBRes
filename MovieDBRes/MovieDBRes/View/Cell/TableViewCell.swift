//
//  TableViewCell.swift
//  MovieDBRes
//
//  Created by Lucas Justo on 09/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var view: TableCellView = TableCellView()
    var viewModel: TableCellViewModel?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.configView()
        self.contentView.addSubview(view)
    }
    
    private func configView() {
        self.view.titleLabel.text = viewModel?.getTitle()
        self.view.descriptionLabel.text = viewModel?.getDescription()
        self.view.rateLabel.text = viewModel?.getRate()
        self.view.movieImage.image = viewModel?.getImage()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
