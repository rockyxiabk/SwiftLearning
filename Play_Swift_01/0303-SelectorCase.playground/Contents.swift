//: Playground - noun: a place where people can play

import UIKit
//选择语句
/**
 if-else
 switch-case
 */

let rationg = "A"
if rationg == "A"{
    print("great")
}
else if rationg ==  "B"{
    print("good")
}
else if rationg == "C"{
    print("ok")
}
else{
    print("bad")
}

//switch 一个case可以添加多个值，没有break（忽略），如果不能把所有的可能穷举，那必须复写default
switch rationg {
case "A","a":
    print("great")
case "B","b":
    print("good")
case "C","c":
    print("ok")
default:
    print("bad")
}

//switch 高级用法
let score = arc4random_uniform(100) + 1
switch score {
case 85...100:
    print("great")
case 60..<85:
    print("ok")
case 0..<60:
    print("error")
default :
    print("other")
}

let vector = (-1,0)
switch vector{
case (0,0):
    print("It's origin!")
case (1,0):
    print("It an unit vector on the positive x-axis.")
case (-1,0):
    print("It an unit vector on the negative x-axis.")
case (0,1):
    print("It an unit vector on the positive y-axis.")
case (0,-1):
    print("It an unit vector on the negative y-axis.")
default:
    print("It's just an ordinary vector.")
}


