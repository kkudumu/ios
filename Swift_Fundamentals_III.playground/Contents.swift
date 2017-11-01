//: Playground - noun: a place where people can play

import UIKit

var arr=[Int]()
for i in 1...255 {
    arr.append(i)
}
var random = Int(arc4random_uniform(254))
var random2 = Int(arc4random_uniform(254))
var temp=arr[random]
arr[random]=arr[random2]
arr[random2]=temp


for _ in 1...100{
    let random3 = Int(arc4random_uniform(254))
    let random4 = Int(arc4random_uniform(254))
    let temp=arr[random3]
    arr[random3]=arr[random4]
    arr[random4]=temp
}
for l in 0..<arr.count{
    if arr[l]==42{
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(l) ")
        arr.remove(at: l)
        break
    }

}



