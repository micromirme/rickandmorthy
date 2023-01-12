//
//  RMCharacterDetailViewModel.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 12.01.2023.
//

import Foundation

final class RMCharacterDetailViewModel {
    
    // MARK: - Private properties
    private let character: RMCharacter
    
    // MARK: - Public properties
    public var title: String {
        character.name.uppercased()
    }
    
    // MARK: - Init
    
    init(character: RMCharacter) {
        self.character = character
    }
}
