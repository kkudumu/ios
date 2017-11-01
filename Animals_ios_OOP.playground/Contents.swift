//: Playground - noun: a place where people can play

import UIKit

class Animal {
    //Give Animal a property "name"
    var name: String = ""
    //Give Animal a property "health" with a default value of 100
    var health: Int = 100
    //Give Animal an initialization that takes in a name and sets the name property appropriately
    init(name: String) {
        self.name = name
    }
    //Give the animal a displayHealth method
    func displayHealth() -> Int {
        return health
    }
}

//Next, create a subclass of Animal called Cat
class Cat: Animal {
    // Give the Cat a method "growl" that prints to the screen "Rawr!"
    func growl() {
        print("Rawr!")
    }
    //Modify the Cat's health to be 150 - since we are passing the name in our init, we now need to pass this down to our subclasses
    init(cat_name: String) {
        super.init(name: cat_name)
        health = 150
    }
    // Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health
    func run() {
        print("Running")
        self.health -= 10
    }
}
//Next, create two subclasses of Cat - Cheetah and Lion
class Lion: Cat {
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
    //Override Lion's health to be 200 - once again, modifying our init based on the init in the inheritance
    init(lion_name: String) {
        super.init(cat_name: lion_name)
        self.health = 200
    }
}


class Cheetah: Cat {
    init(cheetah_name: String) {
        super.init(cat_name: cheetah_name)
        health = 200
    }
    //Now modify the Cheetah's run method so that it cannot run if it does not have the required health.
    override func run() {
        if self.health > 51 {
        print("Running Fast")
        self.health -= 50
        }
        else {
        print("The cheetah does not have enough health to run.")
        }
    }
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)
    
    func sleep() {
        if health <= 200 {
        self.health += 50
        }
        else {
            print("Can't have over 200 health, friend.")
        }
    }
}

var cheetah1 = Cheetah(cheetah_name: "chester")
cheetah1.run()
cheetah1.run()
cheetah1.run()
cheetah1.run()
print(cheetah1.displayHealth())

var lion1 = Lion(lion_name: "lion-o")
lion1.run()
lion1.run()
lion1.run()
lion1.growl()




