//
//  RMLocationModel.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 28.12.2022.
//

import Foundation

struct RMLocationModel: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
