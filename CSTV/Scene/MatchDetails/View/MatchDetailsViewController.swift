//
//  MatchDetailsViewController.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation
import UIKit

class MatchDetailsViewController: UIViewController, ViewModelBindable {
    
    var viewModel: MatchDetailsViewModel?
    
    @IBOutlet var matchTimeLabel: UILabel!
    // MARK: Teams
    @IBOutlet var teamsView: UIView!
    // MARK: Team A
    @IBOutlet var teamAView: UIView!
    @IBOutlet var teamAImage: UIView! // TODO: change to UIImage
    @IBOutlet var teamALabel: UILabel!
    // MARK: VS label
    @IBOutlet var vsLabel: UILabel!
    // MARK: Team B
    @IBOutlet var teamBView: UIView!
    @IBOutlet var teamBImage: UIView! // TODO: change to UIImage
    @IBOutlet var teamBLabel: UILabel!
    //  MARK: Players
    @IBOutlet weak var playersTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: remove this mock values
        title = "League + serie"
        teamALabel.text = "team 1"
        vsLabel.text = "vs"
        teamBLabel.text = "team 2"
        teamAImage.layer.cornerRadius = 30
        teamBImage.layer.cornerRadius = 30
        
        matchTimeLabel.text = "Hoje, 21:00"
    }
    
    func bindViewModel() {}
}

extension MatchDetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.players.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let rowPlayers = viewModel?.players[indexPath.row] else { return UITableViewCell() }
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: PlayerTableViewCell.identifier,
            for: indexPath
        ) as? PlayerTableViewCell {
            cell.configure(rowPlayers: rowPlayers)
            return cell
        }
        return UITableViewCell()
    }
}
