//: Playground - noun: a place where people can play

import UIKit
//强引用 回收
class Person{
    
    var name: String
    weak var apartment: Apartment?//添加关键字 weak 弱引用类型
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is being deinitialized!")
    }
}

class Apartment{
    
    let name: String
    weak var tenant: Person?//添加关键字 weak 弱引用类型
    
    init(name: String){
        self.name = name
        print("Apartment", name, "is initialized!")
    }
    
    deinit{
        print("Apartment", name, "is being deinitialized!")
    }
}

var liuyubobobo: Person? = Person(name: "liuyubobobo")//count 1
var imoocApartment: Apartment? = Apartment(name: "imooc Apartment")//count2
liuyubobobo?.apartment = imoocApartment//count 3
imoocApartment?.tenant = liuyubobobo//count 4

imoocApartment = nil//count 2
liuyubobobo = nil//count 0
