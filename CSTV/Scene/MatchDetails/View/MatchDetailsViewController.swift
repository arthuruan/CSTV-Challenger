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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "League + serie"
        teamALabel.text = "team 1"
        vsLabel.text = "vs"
        teamBLabel.text = "team 2"
        teamAImage.layer.cornerRadius = 30
        teamBImage.layer.cornerRadius = 30
    }
    
    func bindViewModel() {
        
    }
}
