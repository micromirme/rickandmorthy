//
//  RMCharacterModel.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 28.12.2022.
//

import Foundation

struct RMCharacter: Codable  {
    let id: Int
    let name: String
    let status: RMCharacterStatusModel
    let species: String
    let type: String
    let gender: RMCharacterGenderModel
    let origin: RMOriginModel
    let location: RMSingleLocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

