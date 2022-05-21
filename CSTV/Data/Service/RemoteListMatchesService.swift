//
//  RemoteListMatchesService.swift
//  CSTV
//
//  Created by Arthur Ruan on 20/05/22.
//

import Foundation

class RemoteListService {
    func listMatches(with query: String, completion: @escaping (_ result: Result<[Match], Error>) -> Void) {
        PandaScoreAPI.shared.getMatches{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let response):
                    completion(.success(response))
                case .failure:
                    completion(.failure(ErrorMessageResponse(message: "Network error conection")))
                }
            }
        }
    }
}
