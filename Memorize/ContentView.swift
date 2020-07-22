//
//  ContentView.swift
//  Memorize
//
//  Created by Luk Ming Ho on 21/7/2020.
//  Copyright © 2020 Luk Ming Ho. All rights reserved.
//

// cs193p assignment 1

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach (viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.chooseCard(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(viewModel.cards.count==10 ? Font.body : Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else  {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .aspectRatio(2/3, contentMode: .fit)
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
