//
//  RepositoryState.swift
//  CSTV
//
//  Created by Arthur Ruan on 20/05/22.
//

import Foundation

enum RepositoryState<ErrorType: Equatable>: Equatable {
    case idle
    case loading
    case loaded
    case error(_ error: ErrorType)
}
