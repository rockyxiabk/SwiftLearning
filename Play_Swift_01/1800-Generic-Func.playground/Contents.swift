//: Playground - noun: a place where people can play

import UIKit

func swap1( _  a: inout Int, _ b : inout Int){
    (a,b) = (b,a)
}
var a = 1
var b = 2
swap1(&a, &b)
a
b
swap(&a, &b)
func swap2<T>(_ a: inout T, _ b: inout T){
    (a,b) = (b,a)
}
var aa = "as"
var bb = "bb"
swap2(&aa, &bb)

swap2(&a, &b)

// generic type 泛型类型
let arr = Array<Int>()
let dict = Dictionary<String,Int>()
let set  = Set<Float>()


struct Stack<T>{
    var items = [T]()
    
    func isEmpty() -> Bool{
        return items.count == 0
    }
    
    mutating func push(item: T){
        items.append(item)
    }
    
    mutating func pop() -> T?{
        
        guard !self.isEmpty() else{
            return nil
        }
        
        return items.removeLast()
    }
    
}
struct Pair<T1,T2>{
    
    var a: T1
    var b: T2
    
}

var pair = Pair<Int,String>(a: 0 , b: "Hello")
pair
