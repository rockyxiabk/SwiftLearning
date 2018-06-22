//: Playground - noun: a place where people can play

import UIKit

for i in 1...10 {
    print(i)
}
for c in "hello" {
    c
}
var arr = ["a","e","i","o","U"]
for v in arr {
    v
}
var  set : Set<String> = ["java","android","c","ios","swift"]
for v in set.enumerated() {
    v
}
for (i,v) in set.enumerated(){
    print("pos:\(i),values:\(v)")
}



