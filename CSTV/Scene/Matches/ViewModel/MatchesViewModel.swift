//
//  MatchesViewModel.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation

class MatchesViewModel {
    var coordinator: MainCoordinator?
    var matches: [Match]
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.matches = .init([])
    }
    
    func goToMatchDetails() {
        self.coordinator?.goToMatchDetails()
    }
}
