//
//  PokemonCell.swift
//  pokedex
//
//  Created by Lucas Barroso IZ on 13/12/2022.
//

import SwiftUI
import Kingfisher

@available(iOS 14.0, *)
struct PokemonCell: View {
    let pokemon: Pokemon
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                        
                }
            }
        }
        .background(Color(PokemonViewModel.backgroundColor(forType: pokemon.type)))
        .cornerRadius(12)
        .shadow(color: Color(PokemonViewModel.backgroundColor(forType: pokemon.type)), radius: 6, x: 0.0, y: 0.0)
        
    }
    
}

