//: Playground - noun: a place where people can play

import UIKit

//面向协议的编程 特征： 关注特征的实现 而非关注底层的实现
protocol Prizable{
    func isPrizable() -> Bool
}

struct Student: CustomStringConvertible, Equatable, Comparable, Prizable{
    var name: String
    var score: Int
    var description: String{
        return name + "Score: " + String(score)
    }
    
    func isPrizable() -> Bool {
        return score >= 60
    }
}
func ==(s1:Student,s2:Student) -> Bool{ return s1.score == s2.score}
func <(s1:Student,s2:Student) -> Bool{ return s1.score < s2.score}

let liuyubobobo = Student(name: "liuyubobobo", score: 100)

let a = Student(name: "Alice", score: 80)
let b = Student(name: "Bob", score: 92)
let c = Student(name: "Karl", score: 85)

let students = [a, b, c, liuyubobobo]

func topOne<T: Comparable>(seq:[T]) -> T{
    assert(seq.count > 0)
    return seq.reduce(seq[0]){ max( $0 , $1 ) }
}

topOne(seq: [4,5,7,2])
topOne(seq: ["Hello","Swift"])
topOne(seq: [a,b,c,liuyubobobo])

func topPrizableOne<T: Comparable & Prizable>(seq:[T]) -> T?{
    return seq.reduce(nil){ ( tmpTop: T? , contender: T) in
        
        guard contender.isPrizable() else{
            return tmpTop
        }
        
        guard let tmpTop = tmpTop else{
            return contender
        }
        
        return max( tmpTop , contender )
    }
}
topPrizableOne(seq: students)?.name


