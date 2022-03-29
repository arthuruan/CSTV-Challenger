//
//  MatchTableViewCell.swift
//  CSTV
//
//  Created by Arthur Ruan on 29/03/22.
//

import UIKit

class MatchTableViewCell: UITableViewCell {
    
    static let identifier = "MatchTableViewCell"
    var viewModel: MatchesViewModel?
    
    @IBOutlet var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.viewModel?.goToMatchDetails()
    }
    
    func configure(match: Match) {
        nameLabel.text = match.name
    }
}
