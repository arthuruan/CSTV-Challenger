//
//  MatchDetailsViewModel.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation


class MatchDetailsViewModel {
    var coordinator: MatchDetailsCoordinator?

    init(coordinator: MatchDetailsCoordinator) {
        self.coordinator = coordinator
    }
    
    func goBack() {
        coordinator?.dismiss()
    }
}
