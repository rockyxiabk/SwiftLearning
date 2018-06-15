//: Playground - noun: a place where people can play

import UIKit

let age = 19
switch age {
case 10...19:
    print("teengaer")
default:
    print("not teengaer")
}
if case 10...19 = age{
    print("You're a teenager.")
}

for case  let i in 1...100 where i % 3 == 0{
    print(i)
}
