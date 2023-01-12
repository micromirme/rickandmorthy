//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 05.01.2023.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    
    // MARK: - Public properties
    
    public  let characterName: String
    
    // MARK: - Private properties
    private let characterStatus: RMCharacterStatusModel
    private let characterImageURL: URL?
    
    // MARK: - Computed properties
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    // MARK: - Init
    
    init(
        characterName: String,
        characterStatus: RMCharacterStatusModel,
        characterImageURL: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageURL = characterImageURL
    }
    
    // MARK: - Public func
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // TODO: move to Image Manager
        guard let url = characterImageURL else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        
        task.resume()
    }
}
