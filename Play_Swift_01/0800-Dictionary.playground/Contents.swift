//: Playground - noun: a place where people can play

import UIKit

// 声明字典 元素不可以重复
var dict = ["swift":"雨燕；快速", "python":"大蟒", "java":"爪洼岛（位于印尼）", "groovy":"绝妙的，时髦的"]

//var dict: [String:String]
//var dict: Dictionary<String, String>

// 创建空字典
var emptyDictionary1:[String:Int] = [:]
var emptyDictionary2:Dictionary<Int,String> = [:]
var emptyDictionary3 = [String:String]()
var emptyDictionary4 = Dictionary<Int,Int>()

print(dict["swift"] ?? "error String")
print(dict["C++"] ?? "nil")

dict.count
dict.isEmpty
emptyDictionary1.isEmpty

Array(dict.keys)
