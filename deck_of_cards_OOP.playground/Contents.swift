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
            else if (self.color == "Red") {
                return Int(arc4random_uniform(2) + 3)
            }
            else {
                return Int(arc4random_uniform(2) + 5)
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
    }
        func removeTop() -> String {
            //to determine top of deck, cards.count - 1. because of our previous work, this count should be 30
            let deck_top = cards.count - 1
            // set temp to be card at the top of deck. this is because we want to return the color and value
            let temp = cards[deck_top]
            //remove card at top of deck
            cards.remove(at: deck_top)
            //show value of card
            print(temp)
            //return color of card
            return temp.color
        }
        
        func isEmpty() -> Bool {
            //check to see if our cards is still greater than one. If it is, we print false because we still have more cards!
            if cards.count > 1 {
                print("false")
                return false
            }
            else {
                //else it really is true that we're out of cards! You know, cause 0.
                print("true")
                return true
            }
        }
        
        func shuffle() {
            for _ in 0...15 {
                //split our deck in half in our for loop. Set each half to be a random card. if these cards are not equal, we use our swap function to shuffle from each stack of the cards
                // from the platform: Think of the '&' sign as passing the memory address of the particular constant or variable so that the function can go directly there and modify it so that the changes will persist outside of the function.
                let random = Int(arc4random_uniform(UInt32(cards.count)))
                let random2 = Int(arc4random_uniform(UInt32(cards.count)))
                if random != random2 {
                    swap(&cards[random], &cards[random2])
                }
            }
        }
    }



//set player draw to call the Deck class
var player_draw = Deck()

class Player {
    //Give the Player class a name property
    var name = String()
    //Give the Player a hand property of type [Card] - had to use string here because we could not append without much errors. called [Card] later
    var hand = [String]()
    
    //Give the Player a draw method of type (Deck) -> Card which draws a card from a deck, adds it to the players hand, and returns it
    func draw() -> String {
        //calling in our player_draw var which is calling the Deck class. Running our function for removal against the deck. Player draws from top of deck. cards count - 1
        let draw_card = player_draw.removeTop()
        //we are appending the top removed card to the player hand.
        self.hand.append(draw_card)
        
        return draw_card
    }
    // Give the Player a rollDice method that returns a random number between 1 and 6
    func rolldice() -> Int {
        let roll: Int = Int(arc4random_uniform(6) + 1)
        return roll
    }
    
    //Give the Player a matchingCards method of (String, Int) -> Int that will count all the card the player has which match the given color string and roll integer.
    //need to define a var to initialize card so that we can loop through deck and find matching cards
    var card_pull = [Card]()
    func matchingCards(roll: Int, color: String) -> Int {
        var count: Int = 0
        for i in card_pull {
            if (roll == i.roll && color == i.color) {
                count += 1
            }
        }
        print(count)
        return(count)
    }

}










