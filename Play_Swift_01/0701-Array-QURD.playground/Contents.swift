//: Playground - noun: a place where people can play

import UIKit

var arrays = ["C","C++","java","JS","Kotlin"]

arrays.insert("Ada", at: 0)
arrays.append("swift")
arrays += ["Html"]
print(arrays)

arrays.removeFirst()
print(arrays)
arrays.remove(at: 4)
print(arrays)

arrays[0] = "Ruby"
print(arrays)
arrays[0..<4] = ["hello world","hello","world"]
print(arrays)
