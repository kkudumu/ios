//: Playground - noun: a place where people can play

import UIKit

struct Card {
    var color: String
    var roll: Int {
        //This is so we can grab the value of color and bind it to our roll. Arcrandom will
        //help us determine the range of values these colors have
        //Int(arc4random_uniform(2) + 3) says that we want to start at 3, and end at 4, because the top end of a range is not included.
        //more info on get and set: https://stackoverflow.com/questions/24699327/swift-what-are-get-and-set
        get {
            if (self.color == "Blue") {
                return Int(arc4random_uniform(2) + 1)
            }
            if (self.color == "Red") {
                return Int(arc4random_uniform(2) + 3)
            }
            if (self.color == "Green") {
                return Int(arc4random_uniform(3) + 4)
            }
        }
    }
}


class Deck {
    //we need to call in our Card struct and use () to call the self
    var cards = [Card]()
    //init() will help us further invoke the self of our Card struct after we declare
    init() {
        for _ in 1...10 {
            let card = Card(color: "Blue")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Red")
            cards.append(card)
        }
        for _ in 1...10 {
            let card = Card(color: "Green")
            cards.append(card)
        }
        func removeTop() -> String {
            //to determine top of deck, cards.count - 1. because of our previous work, this count should be 30
            let deck_top = cards.count - 1
            let temp = cards[deck_top]
            cards.remove(at: deck_top)
            return temp.color
        }
    }

}

class Player {
    var name: String = ""
    var hand: [Card] = []
    //func draw (Deck) remove card from deck, add to player hand, returns
    var rollDice = arc4random_uniform(6)
    //func matchingCards(String, Int) -> int count all card player has which match given color string and roll integer
}
