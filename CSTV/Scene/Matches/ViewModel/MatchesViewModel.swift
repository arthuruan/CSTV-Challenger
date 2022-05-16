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
    
    func getMatches() {
        PandaScoreAPI.shared.getMatches{ [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let model):
                    self?.matches = model
                    print(model)
                    break
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    func goToMatchDetails() {
        self.coordinator?.goToMatchDetails()
    }
}
