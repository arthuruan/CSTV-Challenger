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
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        let iconLeftArrow = UIImage(named: "arrow-left")
        self.rootViewController.navigationBar.backIndicatorImage = iconLeftArrow
        self.rootViewController.navigationBar.backIndicatorTransitionMaskImage = iconLeftArrow
        self.rootViewController.navigationBar.tintColor = UIColor.white
        
        self.rootViewController.navigationBar.prefersLargeTitles = true
        self.rootViewController.navigationBar.barTintColor = UIColor(red: 22/255, green: 22/255, blue: 33/255, alpha: 1)
        self.rootViewController.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        self.rootViewController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    func start() {
        let matchesViewController = MatchesViewController()
        
        let matchesViewModel = MatchesViewModel(coordinator: self)
        matchesViewController.bind(to: matchesViewModel)
        
        matchesViewController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    
        self.rootViewController.pushViewController(matchesViewController, animated: true)
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
        
        matchDetailsViewController.navigationItem.largeTitleDisplayMode = .never
        
        self.rootViewController.pushViewController(matchDetailsViewController, animated: true)
    }
}
