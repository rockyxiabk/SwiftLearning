//: Playground - noun: a place where people can play

import UIKit

//协议 关键字 protocol
protocol Pet{
    
    var name : String { get set}
    var brithPlace : String {get}
    
    //只声明，不实现
    func playWith()
    func fed(food : String)
    mutating func changeName(newName: String)
}
struct Dog : Pet{
    mutating func changeName(newName: String) {
        self.name = newName
    }
    
    var name: String
    
    var brithPlace: String
    
    func playWith() {
        print("dog play")
    }
    
    func fed() {
        print("dog fed none)")
    }
    func fed(food: String = "apple") {
        print("dog fed \(food)")
    }
    
}

var dog = Dog(name: "java", brithPlace: "bj")
dog.brithPlace = "sh"
dog.name
dog.changeName(newName: "ios")
dog

let aPet: Pet = dog
aPet.brithPlace
aPet.name


