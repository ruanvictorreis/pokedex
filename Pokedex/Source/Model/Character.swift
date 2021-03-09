//
//  Character.swift
//  Pokedex
//
//  Created by Ruan Reis on 09/03/21.
//

import Foundation

struct Character: Decodable {
    
    let id: Int
    
    let name: String
    
    let status: String
    
    let species: String
    
    var isFavorite = false
    
    enum CodingKeys: CodingKey {
        case id, name, status, species
    }
}
