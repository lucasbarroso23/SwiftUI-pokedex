//
//  PokedexView.swift
//  pokedex
//
//  Created by Lucas Barroso IZ on 13/12/2022.
//

import SwiftUI

@available(iOS 14.0, *)
struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()),
                             GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

@available(iOS 14.0, *)
struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
