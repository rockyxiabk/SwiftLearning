//: Playground - noun: a place where people can play

import UIKit
//集合的初始化 set 必须显式声明，否则被认为是数组
var skillsOfA : Set<String> = ["swift","OC"]

// 空集合
var emptySet1: Set<String> = []
var emptySet2 = Set<String>()
var e1 = Set<String>()
var e2 : Set<String> = []

var vowels = Set(["A","E","I","O","U"])
//var vowels1 = Set<String>(["A","E","I","O","U"])

var skillsOfB: Set = ["HTML","CSS","Javascript"]


// 集合元素个数
skillsOfA.count

var set: Set = [2,2,2,2]
set.count


// 集合是否为空
skillsOfB.isEmpty
emptySet1.isEmpty


// 快速获得集合中的一个元素
skillsOfA.first

// 包含
skillsOfA.contains("swift")


// 遍历
for skill in skillsOfB{
	print(skill)
}


// 比较
let setA: Set = [1,2,3]
let setB: Set = [3,2,1,1,1,1]
setA == setB
