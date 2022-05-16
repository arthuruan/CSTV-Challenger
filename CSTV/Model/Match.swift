//
//  Match.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation

struct Tournament: Codable {
    let id: Int
    let begin_at: String
    let end_at: String?
    let league_id: Int
    let modified_at: String
    let name: String
    let serie_id: Int
    let slug: String
    let tier: String
    let winner_id: Int?
    let winner_type: String
}

struct Serie: Codable {
    let begin_at: String
    let description: String?
    let end_at: String?
    let full_name: String
    let id: Int
    let league_id: Int
    let modified_at: String?
    let name: String
    let season: String
    let slug: String
    let tier: String
    let winner_id: Int?
    let winner_type: String?
    let year: Int
}

enum Status: String, Codable {
    case Finished = "finished", NotPlayed = "not_played", NotStarted = "not_started", Running = "running"
    static let allValues = [Finished, NotPlayed, NotStarted, Running]
}

struct League: Codable {
    let id: Int
    let image_url: String?
    let modified_at: String?
    let name: String
    let slug: String
    let url: String?
}

struct Opponent: Codable {
    let acronym: String?
    let id: Int?
    let image_url: String?
    let location: String?
    let modified_at: String?
    let name: String?
    let slug: String?
}

struct OpponentItem: Codable {
    let opponent: Opponent?
    let type: String?
}

struct Match: Codable {
    let id: Int
    let match_type: String
    let number_of_games: Int
    let original_scheduled_at: String
    let tournament_id: Int
    let tournament: Tournament
    let serie: Serie
    let forfeit: Bool
    let rescheduled: Bool
    let official_stream_url: String?
    let modified_at: String?
    let begin_at: String?
    let end_at: String?
    let status: Status
    let scheduled_at: String?
    let league: League
    let draw: Bool
    let opponents: [OpponentItem]
    let slug: String
    let winner_id: Int?
    let league_id: Int
    let name: String
    let serie_id: Int
}
