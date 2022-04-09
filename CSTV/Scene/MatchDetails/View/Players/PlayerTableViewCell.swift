//
//  PlayerTableViewCell.swift
//  CSTV
//
//  Created by Arthur Ruan on 08/04/22.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    static let identifier = "PlayerTableViewCell"
    
    @IBOutlet var containerView: UIView!
    // MARK: Player Team A
    @IBOutlet var playerTeamAView: UIView!
    @IBOutlet var playerTeamABodyView: UIView!
    @IBOutlet var playerTeamAImage: UIView!
    @IBOutlet var playerTeamANicknameLabel: UILabel!
    @IBOutlet var playerTeamANameLabel: UILabel!
    // MARK: Player Team B
    @IBOutlet var playerTeamBView: UIView!
    @IBOutlet var playerTeamBBodyView: UIView!
    @IBOutlet var playerTeamBImage: UIView!
    @IBOutlet var playerTeamBNicknameLabel: UILabel!
    @IBOutlet var playerTeamBNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        setupView()
    }
    
    private func setupView() {
        playerTeamABodyView.clipsToBounds = true
        playerTeamABodyView.layer.cornerRadius = 12
        playerTeamABodyView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        playerTeamAImage.layer.cornerRadius = 8
        
        playerTeamBBodyView.clipsToBounds = true
        playerTeamBBodyView.layer.cornerRadius = 12
        playerTeamBBodyView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        playerTeamBImage.layer.cornerRadius = 8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(rowPlayers: RowPlayers) {
        playerTeamANicknameLabel.text = rowPlayers.playerTeamA.nickname
        playerTeamANameLabel.text = rowPlayers.playerTeamA.name
        playerTeamBNicknameLabel.text = rowPlayers.playerTeamB.nickname
        playerTeamBNameLabel.text = rowPlayers.playerTeamB.name
    }
}
