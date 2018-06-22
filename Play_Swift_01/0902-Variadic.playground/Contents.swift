//: Playground - noun: a place where people can play

import UIKit
//变长数据类型
func mean(number :Double ...) -> Double{
    var sun :Double = 0
    for nu in number {
        sun += nu
    }
    return sun / Double(number.count)
}

mean(number: 1,2,3,9,5,5)
