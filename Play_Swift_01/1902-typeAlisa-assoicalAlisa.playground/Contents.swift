//: Playground - noun: a place where people can play

import UIKit
//type-alias 变量别名
typealias Length = Double

extension Double{
    
    var km: Length{ return self * 1000.0 }
    var m: Length{ return self }
    var cm: Length{ return self / 100 }
    var ft: Length{ return self / 3.28084 }
}

let runningDistance: Length = 3.54.km
runningDistance


typealias AudioSample = UInt64


protocol WeightCalc{
    associatedtype  WeightType
    var weight : WeightType {get}
    
}

class iphone: WeightCalc{
    var weight: Double = 0.0
    
    typealias WeightType = Double
    
}
class Ship: WeightCalc{
    
    typealias WeightType = Int
    
    var weight: WeightType
    
    init(weight: Int){
        self.weight = weight
    }
}
extension Int{
    typealias Weight = Int
    var t: Weight{return 1_000*self}
}

let titanic = Ship(weight: 46_328_000)
titanic.weight

// Equatable and comparable
struct Record: Equatable, Comparable, CustomStringConvertible{
    
    var wins: Int
    var losses: Int
    //CustomStringConvertible 描述协议的实现
    var description: String {
        return "wins \(wins), losses \(losses)"
    }
    
}
// 必须紧跟着写
func ==(left: Record, right: Record) -> Bool{
    return left.wins == right.wins && left.losses == right.losses
}
func <(left: Record, right: Record) -> Bool{
    if left.wins != right.wins{
        return left.wins < right.wins
    }
    return left.losses > right.losses
}

let recordA = Record(wins: 10, losses: 5)
let recordB = Record(wins: 10, losses: 5)

recordA == recordB

// 不仅仅是重载 == 的意义在于，告诉别人，我是Equatable的！
var team1Record = Record(wins: 10, losses: 3)
var team2Record = Record(wins: 8, losses: 5)
var team3Record = Record(wins: 8, losses: 8)
var records = [team1Record,team2Record,team3Record]

records.sort()

print(recordA)
