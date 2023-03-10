//
//  RMService.swift
//  RickAndMorthy
//
//  Created by Виталий Захаров on 29.12.2022.
//

import Foundation

final class RMService {
    
    static let share = RMService()
    
    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completeion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completeion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completeion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completeion(.success(result))
            }
            catch {
                completeion(.failure(error))
            }
        }
        task.resume()
    }
    
    // MARK: - Private
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
