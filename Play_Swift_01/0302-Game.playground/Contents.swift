//: Playground - noun: a place where people can play

import UIKit

var  a = 0 , b = 0 , count = 0
repeat{
    count+=1
    let aScore = arc4random_uniform(6)+1
    let bScore = arc4random_uniform(6)+1
    if aScore>bScore{
        b=0
        a+=1
    }
    else if aScore<bScore{
        a=0
        b+=1
    }
    else{
        a=0
        b=0
    }
    print("game count:\(count),a=\(aScore),b=\(bScore)")
}while a<3||b<3

print( a==3 ? "a win" : "b win")
