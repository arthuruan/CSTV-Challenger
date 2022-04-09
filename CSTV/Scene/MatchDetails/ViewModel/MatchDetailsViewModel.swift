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
                playerOne: Player(nickname: "s1mple", name: "Oleksandr Kostyliev"),
                playerTwo: Player(nickname: "yuurih", name: "Yuri Boian")
            ),
            RowPlayers(
                playerOne: Player(nickname: "electroNic", name: "Denis Sharipov"),
                playerTwo: Player(nickname: "arT", name: "Andrei Piovezan")
            ),
            RowPlayers(
                playerOne: Player(nickname: "Boombl4", name: "Kirill Mikhaylov"),
                playerTwo: Player(nickname: "KSCERATO", name: "Kaike Cerato")
            ),
            RowPlayers(
                playerOne: Player(nickname: "Perfecto", name: "Ilya Zalutskiy"),
                playerTwo: Player(nickname: "drop", name: "André Abreu")
            ),
            RowPlayers(
                playerOne: Player(nickname: "b1t", name: "Valerii Vakhovskyi"),
                playerTwo: Player(nickname: "saffee", name: "Rafael Costa")
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
