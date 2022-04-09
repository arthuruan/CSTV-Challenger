//
//  MatchDetailsViewModel.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation


class MatchDetailsViewModel {
    var coordinator: MainCoordinator?
    var players: [RowPlayers]

    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        self.players = .init([])
    }
    
    func populatePlayers() {
        // TODO: remove this mock values
        let mockPlayers: [RowPlayers] = [
            RowPlayers(
                playerTeamA: Player(nickname: "s1mple", name: "Oleksandr Kostyliev"),
                playerTeamB: Player(nickname: "yuurih", name: "Yuri Boian")
            ),
            RowPlayers(
                playerTeamA: Player(nickname: "electroNic", name: "Denis Sharipov"),
                playerTeamB: Player(nickname: "arT", name: "Andrei Piovezan")
            ),
            RowPlayers(
                playerTeamA: Player(nickname: "Boombl4", name: "Kirill Mikhaylov"),
                playerTeamB: Player(nickname: "KSCERATO", name: "Kaike Cerato")
            ),
            RowPlayers(
                playerTeamA: Player(nickname: "Perfecto", name: "Ilya Zalutskiy"),
                playerTeamB: Player(nickname: "drop", name: "André Abreu")
            ),
            RowPlayers(
                playerTeamA: Player(nickname: "b1t", name: "Valerii Vakhovskyi"),
                playerTeamB: Player(nickname: "saffee", name: "Rafael Costa")
            )
        ]
        
        
        for rowPlayers in mockPlayers {
            self.players.append(rowPlayers)
        }
    }
    
    func goBack() {
        coordinator?.dismiss()
    }
}
