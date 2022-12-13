//
//  Pokemon.swift
//  pokedex
//
//  Created by Lucas Barroso IZ on 13/12/2022.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "poison"),
    .init(id: 1, name: "Ivysour", imageUrl: "1", type: "poison"),
    .init(id: 2, name: "Venusour", imageUrl: "1", type: "poison"),
    .init(id: 3, name: "Charmander", imageUrl: "1", type: "fire"),
    .init(id: 4, name: "Charmeleon", imageUrl: "1", type: "fire"),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "fire")
]
