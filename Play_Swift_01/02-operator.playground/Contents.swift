//: Playground - noun: a place where people can play

import UIKit

//运算符
var a = 3
var x = 10
var y = 3
var z = 0
x + y
x - y
x * y
x / y
x % y
Double(x) / Double(y)

//在Swift3中， ++ 和 --，两个操作被彻底弃用。
//x++
//--x
//使用 += 1; -=1 来代替++和--
x += 1
x -= 1

x %= 2

//比较运算符（返回Boolean）
let money = 100
let  price = 60
if money >= price {
    print("buy it")
    print("buy it", separator: "!", terminator: "\n")
}
// 复杂逻辑的串联
var isUsernameOK = false
var isPasswordOK = false

var isPhoneNumberOK = true
var isPhoneCodeOK = false

if ( isUsernameOK && isPasswordOK ) || ( isPhoneNumberOK && isPhoneCodeOK ){
    print("login success")
}
else{
    print("login failed")
}

//三目运算符
var  battery = 21
var batteryColor : UIColor
batteryColor = battery <= 20 ? UIColor.red : UIColor.blue

//区间运算符
//[a,b] ... [a,b) ..<
for index in 1...10{
    index
}
