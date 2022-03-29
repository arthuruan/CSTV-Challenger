//
//  MainCoordinator.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation
import UIKit

class MainCoordinator: NavigationCoordinator {
    var rootViewController: UINavigationController
    var isCompleted: (() -> Void)?
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UINavigationController()
    }
    
    func start() {
        let matchesViewController = MatchesViewController()
        
        let matchesViewModel = MatchesViewModel(coordinator: self)
        matchesViewController.bind(to: matchesViewModel)
        
        self.rootViewController.viewControllers = [matchesViewController]
    }
    
    func dismiss() {
        self.rootViewController.dismiss(animated: true) {
            self.isCompleted?()
        }
    }
    
    func goToMatchDetails() {
        let matchDetailsViewController = MatchDetailsViewController()
        
        let matchDetailsViewModel = MatchDetailsViewModel(coordinator: self)
        matchDetailsViewController.bind(to: matchDetailsViewModel)
        
        self.rootViewController.pushViewController(matchDetailsViewController, animated: true)
    }
}
