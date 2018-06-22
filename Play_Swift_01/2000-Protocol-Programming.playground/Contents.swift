//: Playground - noun: a place where people can play

import UIKit

//面向协议的编程

protocol Record: CustomStringConvertible{
    var wins : Int {get}
    var loser : Int {get}
    
    func winning() -> Double
}

//对系统的协议的扩展
extension CustomStringConvertible{
    var descriptionWithDate : String{
         return NSDate().description + " " + description
    }
}

extension Record{
    var description : String{
        return String(format: "winner %d, loser: %d", arguments: [wins,loser])
    }
    var gameCount : Int{
        return wins + loser
    }
    func winning() -> Double {
        print("basket winning")
        return 10.0
    }
}
struct Basketball : Record,Prizable{
    func isPrizable() -> Bool {
        return wins > 2
    }
    
    var wins: Int
    
    var loser: Int
    
    
}
protocol Tieable {
    var ties : Int {get set}
}

//约束协议扩展
extension Record where Self: Tieable{
    var gameCount : Int{
        return wins + loser + ties
    }
    
}

protocol Prizable{
    
    func isPrizable() -> Bool
}

struct FootBall: Record, Tieable,Prizable{
    func isPrizable() -> Bool {
        return wins > 5
    }
    
    var wins: Int
    var ties: Int
    var loser: Int
}

let basket = Basketball(wins: 10, loser: 39)
basket.description
print(basket.description)
print(basket.gameCount)
print(basket.descriptionWithDate)

let footBall = FootBall(wins: 10, ties: 49, loser: 98)
footBall.gameCount

//协议的聚合
func award(one: CustomStringConvertible&Prizable){
    
    if one.isPrizable(){
        print(one)
        print("Congratulation! You won a prize!")
    }
    else{
        print(one)
        print("You can not have the prize!")
    }
}

award(one: basket)      //swift 3

struct Student: CustomStringConvertible, Prizable{
    var name: String
    var score: Int
    var description: String{
        return name
    }
    
    func isPrizable() -> Bool {
        return score >= 60
    }
}

let liuyubobobo = Student(name: "liuyubobobo", score: 100)
award(one: liuyubobobo)        //swift 3

