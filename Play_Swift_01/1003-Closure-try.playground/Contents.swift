//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    //swift 2: arr.append(random()%1000)
    //swift3中使用arc4random或者arc4random_uniform方法
    arr.append(Int(arc4random()%1000))
}

arr.sort{ a , b in
    abs(a-500) < abs(b-500)
}


// 数值捕获
var num = 300
arr.sort{ a , b in
    abs(a-num) < abs(b-num)
}

func runningMetersWithMetersPerDay( value metersPerDay: Int) -> () -> Int {
    var totalMeters = 0
    return {
        totalMeters += metersPerDay
        return totalMeters
    }
}
var a = runningMetersWithMetersPerDay(value : 100)
a()
a()

//必包是引用类型
var b = a
b()


