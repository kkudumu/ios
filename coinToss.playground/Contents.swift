//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
func tossCoin() -> String{
    print("Tossing a coin!")
    let toss=Int(arc4random_uniform(2))
    if toss==0{
        print("It's heads!!!!!!!!!!!!")
    }
    if toss==1{
        print("It's tails.... :'(")
    }
    return "\(toss)"
}

func tossMultCoins(num : Int) -> Double{
    var heads=0
    var ratio=0.0
    for _ in 0..<num{
        let toss = tossCoin()
        if(toss=="0"){
            heads+=1
        }
    }
    ratio = Double(heads)/Double(num)
    print("\(ratio)")
    return ratio
}
tossMultCoins(num: 420)
