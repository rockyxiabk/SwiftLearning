//: Playground - noun: a place where people can play

import UIKit
//Sting index range
var str = "Hello, playground"
str[str.startIndex]

str[str.index(str.startIndex, offsetBy: 5)]

let spaceIndex = str.index(str.startIndex, offsetBy: 6)
spaceIndex
str[spaceIndex]
str[str.index(before: spaceIndex)]
str[str.index(after: spaceIndex)]

//swift2: str.replaceRange(range, with: "Hi")
let range = str.startIndex..<str.index(before: spaceIndex)
str.replaceSubrange(range, with: "Hi")

//swift2: str.appendContentsOf("!!!")
str.append("!!!")

//swift2: str.insert("?", atIndex: str.endIndex)
str.insert("?", at: str.endIndex)

//swift2: str.removeAtIndex( str.endIndex.predecessor() )
str.remove(at: str.index(before: str.endIndex))
str

//swift2: str.removeRange( str.endIndex.advancedBy(-2)..<str.endIndex )
str.removeSubrange(str.index(str.endIndex, offsetBy: -2)..<str.endIndex)


//ns nsstring
str.uppercased()
str.lowercased()
str.capitalized

str.contains("Hi")
str.append("hellow")
str.hasPrefix("Hi")
//str.append("swift")
str.hasSuffix("swift")

//String 的缺点和不足
let ss = String(format: "one third is%.2f", 1.0/3.0)

let ns = NSString(format: "one third is %.2f", 2.0/7.0)

let nss = ns as String

nss.count
ns.length

ns.appending("----     ")
ns
ns.trimmingCharacters(in: CharacterSet(charactersIn: " -"))
