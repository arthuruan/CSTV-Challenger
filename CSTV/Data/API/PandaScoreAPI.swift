//
//  PandaScoreAPI.swift
//  CSTV
//
//  Created by Arthur Ruan on 15/05/22.
//

import Foundation


final class PandaScoreAPI {
    static let shared = PandaScoreAPI()
        
    private init () {}
    
    struct Constants {
        static let baseAPIURL = "https://api.pandascore.co/csgo"
        static let token = "lLTkBX-stRT7WfF-4UJfHNW2cRDTzVhQM0mo2NrTg7yfscXYtlQ"
    }
    
    enum APIError: Error {
        case feileedToGetData
    }
    
    enum HTTPMethod: String {
       case GET
       case POST
   }
    
    public func getMatches(completion: @escaping (Result<[Match], Error>) -> Void) {
        createRequest(
            with: URL(string: Constants.baseAPIURL + "/matches?sort=&page=1&per_page=1"), // TODO: remove query hard coded
            type: .GET
        ) { baseRequest in
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(APIError.feileedToGetData))
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode([Match].self, from: data)
                    completion(.success(result))
                } catch {
                    print("[ERROR] \(error)")
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
    
    // MARK: - private
    
    private func createRequest(
        with url: URL?,
        type: HTTPMethod,
        completion: @escaping (URLRequest) -> Void
    ) {
        guard let apiURL = url else {
            return
        }
        var request = URLRequest(url: apiURL)
        request.setValue("Bearer \(Constants.token)", forHTTPHeaderField: "Authorization")
        request.httpMethod = type.rawValue
        request.timeoutInterval = 30
        completion(request)
    }
}
