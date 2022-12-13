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
    @StateObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {            
            ScrollView {
                Spacer()
                LazyVGrid(columns: gridItems, spacing: 16) {
                    
                    ForEach(viewModel.pokemon) { pokemon in
                        NavigationLink {
                            PokemonDetailView(pokemon: pokemon)
                        } label: {
                            PokemonCell(pokemon: pokemon)
                        }
                    }
                }
            }
            .navigationTitle("Pokedex")
            .navigationBarTitleDisplayMode(.inline)
            
        }.accentColor(.white)
    }
}

@available(iOS 14.0, *)
struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
