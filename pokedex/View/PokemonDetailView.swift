//
//  PokemonDetail.swift
//  pokedex
//
//  Created by Lucas Barroso IZ on 13/12/2022.
//

import SwiftUI
import Kingfisher

@available(iOS 14.0, *)
struct PokemonDetailView: View {
    let pokemon: Pokemon
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            Text(pokemon.name)
                .font(.system(size: 36))
                .bold()
                .multilineTextAlignment(.center)
            
            
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .padding(.all, 20)
            
            HStack {
                Text(pokemon.description)
                    .frame(width: 300)
                    .padding(.all, 15)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .center
        )
        .background(Color(PokemonViewModel.backgroundColor(forType: pokemon.type)))
        .edgesIgnoringSafeArea(.all)
        
    }
    
}

@available(iOS 14.0, *)
struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: MOCK_POKEMON[2])
    }
}
