//
//  RMCharacterStatus.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 03.01.2023.
//

import Foundation

enum RMCharacterStatusModel: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
