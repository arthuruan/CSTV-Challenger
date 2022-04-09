//
//  PlayerTableViewCell.swift
//  CSTV
//
//  Created by Arthur Ruan on 08/04/22.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    static let identifier = "PlayerTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(rowPlayers: RowPlayers) {
        
    }
}
