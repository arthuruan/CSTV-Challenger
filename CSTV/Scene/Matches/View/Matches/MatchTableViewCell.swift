//
//  MatchTableViewCell.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import UIKit

class MatchTableViewCell: UITableViewCell {
    
    static let identifier = "MatchTableViewCell"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(match: Match) {
        nameLabel.text = match.name
    }
    
}
