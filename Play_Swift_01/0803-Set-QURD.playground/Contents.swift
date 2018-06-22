//: Playground - noun: a place where people can play

import UIKit
//无序
var set1 : Set<String> = ["Swift" ,"IOS"]

set1.remove("IOS")
set1.insert("android")
set1.contains("Swift")

var set2 : Set<String> = ["android","IOS","PHP","Java"]
//并
set1.union(set2)
set1
set2.formUnion(set2)
//交
set1.isSubset(of: set2)
set2.isStrictSubset(of: set2)
set1.isStrictSubset(of: set2)

//选择适合的数据结构
//数组- 有序
//集合 无序  唯一 提供集合操作 快速查找
//字典 key-value



