//
//  ListMatches.swift
//  CSTV
//
//  Created by Arthur Ruan on 20/05/22.
//

import Foundation

struct ErrorMessageResponse: Codable, Error {
    let message: String
}

protocol ListService {
    func getMatches(with query: String, completion: @escaping (_ result: Result<[Match], Error>) -> Void)
}
