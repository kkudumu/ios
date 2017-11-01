//: Playground - noun: a place where people can play

import UIKit

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var start: Point
    var end: Point
    func length() -> Double {
        let length: Double = sqrt((start.x-end.x)*(start.x-end.x)+(start.y-end.y)*(start.y-end.y))
        return length
    }
}

struct Triangle {
    var Points: [Point]
}

var z = Point(x: 50, y: 100)
print(Line(start: z, end: z))


