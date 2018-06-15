//: Playground - noun: a place where people can play

import UIKit
//String
var str : String = "Hello, "
let str1 = String("swift")

str.isEmpty
str+=str1
str

// 字符串插值
let name = "liuyubobobo"
let age  = 18
let height = 1.78
let s = "My name is \(name), I'm \(age) years old. I'm \(height) meters tall."
print(s)

for c in str.characters{
    print(c)
}

let  mark : Character = "?"
str1 + String(mark)

str.append(mark)

let enC :Character = "a"
let chC :Character = "哈"
let dog: Character = "🐶"
let coolGuy = "\u{1F60E}"

// String对Unicode的支持
var coolLetters = "abc"
coolLetters.characters.count

var chineseLetters = "慕课网"
chineseLetters.characters.count

var coolGuys = "\u{1F60E}\u{1F60E}\u{1F60E}"
coolGuys.characters.count

var cafe = "café"
var cafe2 = "cafe\u{0301}"
cafe.count
cafe2.count


// String的比较
cafe == cafe2
