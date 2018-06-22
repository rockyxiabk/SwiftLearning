//: Playground - noun: a place where people can play

import UIKit

extension Int{
    var square : Int{
        return self * self
    }
    
    var cub : Int{
        return self * square
    }
    
    func inRange(closedLeft left: Int, openedRight: Int) -> Bool{
        return self >= left && self < openedRight
    }
    
    func repetitions(task: () -> Void ){
        for _ in 0..<self{
            task()
        }
    }
    
}
let num = 8
num.square
num.cub
num

num.repetitions {
    print("hei")
}

//开区间 to
for i in stride(from: 0, to: num, by: 2) {
    print(i)
}
//闭区间 through
for i in stride(from: 0, through: num, by: 2) {
    print(i)
}
