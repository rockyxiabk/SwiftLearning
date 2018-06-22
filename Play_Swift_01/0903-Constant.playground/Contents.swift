//: Playground - noun: a place where people can play

import UIKit

//二进制转换
func toBinary( num : Int) -> String {
    var res = ""
    var num = num
    repeat{
    res = String(num%2) + res
    num /= 2
    }while num != 0
    return res
}

toBinary(num: 12)

//交换两个变量的值
func swipTwoValue( a : Int,b : Int)->(x : Int, y :Int){
    return(b,a)
}
var a : Int = 3
var b : Int = 4
var z = swipTwoValue(a: a, b: b)
z.x
z.y
a
b
//&引用传入 ，不改变内存
swap(&a, &b)
a
b
