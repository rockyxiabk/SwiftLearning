//: Playground - noun: a place where people can play

import UIKit
var arr : [Int] = []
for _ in 0..<100 {
    arr.append( Int(arc4random() % 100))
}

arr.sort()

func biggerNum( a : Int , _ b : Int ) -> Bool{
    return a > b
}
arr.sort(by: biggerNum(a:_:))
