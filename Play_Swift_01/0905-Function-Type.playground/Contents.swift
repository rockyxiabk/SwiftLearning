//: Playground - noun: a place where people can play

import UIKit
var  score = [67,47,90,39,89,28,73]

func changeSocre(scores : inout [Int]){
    for (index, score) in scores.enumerated() {
        scores[index] = Int(sqrt(Double(score))*10)
    }
}
changeSocre(scores: &score)

//map
func isPass(score : Int) ->String{
    return score < 60 ? "fail" : "pass"
}
score.map(isPass)

//filter
func fail(score : Int) ->Bool{
    return score < 60
}
score.filter(fail)

//reduce
func add (num1 : Int ,num2 : Int) -> Int{
    return num1 + num2
}
score.reduce(0, add)
