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
    
    @IBOutlet var contentCellView: UIView!
    @IBOutlet var matchTimeView: UIView!
    // MARK: Teams
    @IBOutlet var teamsView: UIView!
    // MARK: Team A
    @IBOutlet var teamAView: UIView!
    @IBOutlet var teamAImage: UIView! // TODO: change to UIImage
    @IBOutlet var teamALabel: UILabel!
    
    @IBOutlet var vsLabel: UILabel!
    // MARK: Team B
    @IBOutlet var teamBView: UIView!
    @IBOutlet var teamBImage: UIView! // TODO: change to UIImage
    @IBOutlet var teamBLabel: UILabel!
    // MARK: League
    @IBOutlet var leagueView: UIView!
    @IBOutlet var leagueLogo: UIView! // TODO: change to UIImage
    @IBOutlet var leagueLabel: UILabel!

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
        
        leagueView.clipsToBounds = true
        leagueView.layer.cornerRadius = 16
        leagueView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        teamAImage.layer.cornerRadius = 30
        teamBImage.layer.cornerRadius = 30
        leagueLogo.layer.cornerRadius = 8
        
        vsLabel.text = "vs"
        leagueLabel.text = "League + serie"
        teamBLabel.text = "team 22222"
        teamALabel.text = "team 1"
        
        // Adding border top
        leagueView.addBorders(edges: .top, color: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.2))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.viewModel?.goToMatchDetails()
    }
    
    func configure(match: Match) {
        nameLabel.text = match.name
    }
}
