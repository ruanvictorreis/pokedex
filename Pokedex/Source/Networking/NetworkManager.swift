//
//  NetworkManager.swift
//  Pokedex
//
//  Created by Ruan Reis on 09/03/21.
//

import Alamofire

protocol NetworkManagerProtocol {
    
    static func request(url: String, completation: @escaping ([Character]) -> Void)
}

class NetworkManager: NetworkManagerProtocol {
    
    static func request(url: String, completation: @escaping ([Character]) -> Void) {
        let request = AF.request(
            url, method: .get,
            encoding: JSONEncoding.default)
        
        request.validate().responseJSON { response in
            switch response.result {
            case .success:
                let data = response.data ?? Data()
                let response = try? JSONDecoder().decode(CharacterResponse.self, from: data)
                completation(response?.results ?? [])
            case .failure(let error):
                print(error)
            }
        }
    }
}
