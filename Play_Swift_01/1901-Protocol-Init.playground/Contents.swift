//: Playground - noun: a place where people can play

import UIKit
//协议 类似 接口 声明函数但不实现函数
protocol Pet{
    
    var name: String{ get set }
    
    init(name: String)
    
    func playWith()
    func fed()
}

class Animal{
    var type: String = "mammal"
}

class Dog: Animal , Pet{
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func playWith() {
        print("play")
    }
    
    func fed() {
        print("fed")
    }
}
class Bird: Animal{
    
    var name: String = "Little Little Bird"
    
    init(name: String){
        self.name = name
    }
}
class Parrot: Bird,Pet{
    required override init(name: String) {
        super.init(name: name + "" + name)
    }
    func playWith() {
        print("parrot play")
    }
    
    func fed() {
        print("parrot fed")
    }
    
}
