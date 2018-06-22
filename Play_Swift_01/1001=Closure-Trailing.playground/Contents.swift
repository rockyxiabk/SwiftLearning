//: Playground - noun: a place where people can play

import UIKit
var arr:[Int] = []
for _ in 0..<10{
    arr.append(Int(arc4random()%1000))   //swift 3
}
arr.sort(by: { a , b in return a > b})
//Trailing 必包
arr.sort(){
    a ,b in return a>b
}
