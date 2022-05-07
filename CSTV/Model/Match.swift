//
//  Match.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import Foundation

struct Tournament {
    let id: Int
    let begin_at: Date
    let end_at: Date?
    let league_id: Int
    let modified_at: Date
    let name: String
    let serie_id: Int
    let slug: String
    let tier: String
    let winner_id: Int?
    let winner_type: String?
}

struct Serie {
    let begin_at: Date
    let description: String?
    let end_at: Date?
    let full_name: String
    let id: Int
    let league_id: Int
    let modified_at: Date
    let name: String
    let season: String
    let slug: String
    let tier: String
    let winner_id: Int?
    let winner_type: String?
    let year: Int
}

struct Game {
    let begin_at: Date
    let complete: Bool
    let detailed_stats: Bool
    let end_at: Date
    let finished: Bool
    let forfeit: Bool
    let id: Int
    let length: Int
    let match_id: Int
    let position: Int
    let status: Status
    let video_url: String?
    let winner_type: String
}

enum Status: String {
    case Finished = "finished", NotPlayed = "not_played", NotStarted = "not_started", Running = "running"
    static let allValues = [Finished, NotPlayed, NotStarted, Running]
}

struct League {
    let id: Int
    let image_url: String
    let modified_at: Date
    let name: String
    let slug: String
    let url: String
}

struct Opponent {
    let acronym: String?
    let id: Int
    let image_url: String
    let location: String
    let modified_at: Date
    let name: String
    let slug: String
}

struct OpponentItem {
    let opponent: Opponent
    let type: String
}

struct Match {
    let id: Int
    let match_type: String
    let number_of_games: Int
    let original_scheduled_at: Date
    let tournament_id: Int
    let tournament: Tournament
    let serie: Serie
    let forfeit: Bool
    let rescheduled: Bool
    let official_stream_url: String?
    let modified_at: Date?
    let begin_at: Date
    let end_at: Date
    let games: [Game]
    let status: Status
    let scheduled_at: Date
    let league: League
    let draw: Bool
    let opponents: [OpponentItem]
    let slug: String
    let winner_id: Int
    let league_id: Int
    let name: String
    let serie_id: Int
}
