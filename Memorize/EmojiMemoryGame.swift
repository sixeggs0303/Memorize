//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Luk Ming Ho on 22/7/2020.
//  Copyright © 2020 Luk Ming Ho. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷", "⚰️", "💀"]
        return MemoryGame<String>(pairs: Int.random(in: 2...emojis.count)){ pairIndex in emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    func chooseCard(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
}
