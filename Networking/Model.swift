//
//  Model.swift
//  Networking
//
//  Created by Renat Ibragimov on 08.08.2022.
//

import Foundation

struct Joke: Decodable {
    let error: Bool
    let category: String
    let type: String
    let setup: String
    let delivery: String
    let flags: Flags
    let id: Int
    let safe: Bool
    let lang: String
}

struct Flags: Decodable {
    let nsfw: Bool
    let religious: Bool
    let political: Bool
    let racist: Bool
    let sexist: Bool
    let explicit: Bool
}

