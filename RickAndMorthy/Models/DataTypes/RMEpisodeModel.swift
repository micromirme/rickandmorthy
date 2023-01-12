//
//  RMEpisodeModel.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 28.12.2022.
//

import Foundation

struct RMEpisodeModel: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
