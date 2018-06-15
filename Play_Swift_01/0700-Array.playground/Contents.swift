//: Playground - noun: a place where people can play

import UIKit

//数据结构 数组array
var numberA = [1,2,3,4,5,6]
var string = ["a","b","c","d","e"]

//init
var empty1: [Int] = []
var empty2: Array<Int> = []
var empty3 = [Int]()
var empty4 = Array<Int>()

//init 初始化初值
var allZeros = Array<Int>(repeating: 0, count: 5)//swift3的解决方案
var allZeros2 = [Int](repeating: 0, count: 5)


var number = [1,2,3,4,5,6,7]
number.count
number.first
number.last
number[number.count-1]
number[6]
//可选型操作
if let firstVuale = number.first{
	print(firstVuale)
}
number.max()
number.min()
number[2...4]
number.contains(4)
number.contains(8)
number.index(after: 3)
number.index(before: 3)

//数组遍历
for index in 0..<number.count{
	print(number[index])
}
for e in number{
	print(e)
}
for (i , valus) in number.enumerated() {//swift 3.0
	print(i)
	print(valus)
}
