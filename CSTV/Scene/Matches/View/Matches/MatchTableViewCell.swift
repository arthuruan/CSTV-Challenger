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
    @IBOutlet var vsLabel: UILabel!
    @IBOutlet var contentCellView: UIView!
    @IBOutlet var matchTimeView: UIView!
    @IBOutlet var teamsContentView: UIView!
    @IBOutlet var teamOneImage: UIView!
    @IBOutlet var teamTwoImage: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        setupView()
    }
    
    private func setupView() {
        contentCellView.layer.cornerRadius = 16
        
        matchTimeView.clipsToBounds = true
        matchTimeView.layer.cornerRadius = 16
        matchTimeView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        
        teamsContentView.clipsToBounds = true
        teamsContentView.layer.cornerRadius = 16
        teamsContentView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        teamOneImage.layer.cornerRadius = 30
        teamTwoImage.layer.cornerRadius = 30
        
        vsLabel.text = "vs"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.viewModel?.goToMatchDetails()
    }
    
    func configure(match: Match) {
        nameLabel.text = match.name
    }
}
