//: Playground - noun: a place where people can play

import UIKit

//常量
let maxNum=1000
//变量
var index = 10
var  x = 1 , y=2 , z=3

/*
 常用数据类型
 Int
 Float Double
 Boolean
 String
 Tuple
 */
//swift 强类型语言
//Int
var mInt : Int = 10
Int.max
Int.min
var imInt : UInt = 80
//Float
let imFloat : Float = 3.1415926
let imDouble : Double = 3.1415926

//CGFloat
let  red:CGFloat = 0.2
let  blue:CGFloat = 0.3
let  green:CGFloat = 0.5
UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0)

//Boolean
let imTrue :Bool = true
let imFalse = false

if imFalse{
    print("i am true")
}
else if 3+4 == 7{
    print("3+4=7")
}

//Tuple 元组 将多个数据放入到一个数据类型中
var point = ( 5, 2)
var error = (404 ,"error not found")
print(error.0)
print(error.1)
var ( statusCode , msg )=error
statusCode = 505
msg = "error"
let point1: (x: Int ,y: Int ) = (10,5)
point1.x
point1.y

var ( m , _) = point
if m > 11{
    print("true")
}
else{
    print("false")
}

//print
print("hello world")
let xx = 1 , yy = 2 , b = true
print(xx,yy, separator: "--", terminator: ":)")



