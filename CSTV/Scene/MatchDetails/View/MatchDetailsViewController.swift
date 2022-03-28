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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        
    }
}
