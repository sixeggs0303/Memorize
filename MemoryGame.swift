//
//  MemoryGame.swift
//  Memorize
//
//  Created by Luk Ming Ho on 22/7/2020.
//  Copyright © 2020 Luk Ming Ho. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    init(pairs: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<pairs {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2  , content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
