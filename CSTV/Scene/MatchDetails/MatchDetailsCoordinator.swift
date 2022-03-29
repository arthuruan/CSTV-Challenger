//
//  MatchDetailsCoordinator.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation
//import UIKit
//
//class MatchDetailsCoordinator: NavigationCoordinator {
//    var rootViewController: UINavigationController
//    var isCompleted: (() -> Void)?
//    var childCoordinators = [Coordinator]()
//
//    init() {
//        self.rootViewController = UINavigationController()
//    }
//
//    func start() {
//        let matchDetailsViewController = MatchDetailsViewController()
//        let matchDetailsViewModel: MatchDetailsViewModel = MatchDetailsViewModel(coordinator: self)
//        matchDetailsViewController.bind(to: matchDetailsViewModel)
//        self.rootViewController.modalPresentationStyle = .fullScreen
//        self.rootViewController.viewControllers = [matchDetailsViewController]
//    }
//    
//    func dismiss() {
//        self.rootViewController.dismiss(animated: true) {
//            self.isCompleted?()
//        }
//    }
//}
