//: Playground - noun: a place where people can play

import UIKit

class Person{
    var name : String
    init(name: String) {
        self.name = name
    }
    func doSomething() -> Void {
        print("thing")
    }
    //内存回收
    deinit {
        print("denint")
    }
}
var rocky: Person? = Person(name: "rocky")
rocky = nil

func inTheShop(){
    
    print("==========")
    print("Welcome!")
    
    // let 在作用域的最后也会deinit
    let liuyubobobo: Person = Person(name: "jack")
    liuyubobobo.doSomething()
}

inTheShop()

func inTheAppleStore(){
    
    print("==========")
    print("Welcome to the Apple Store!")
    
    for i in 1...10{
        print("Time",i)
        let liuyubobobo: Person = Person(name: "daanny\(i)")
        liuyubobobo.doSomething()
    }
}

inTheAppleStore()
