//: Playground - noun: a place where people can play

import UIKit
class Person{
    
    var name: String
    var creditCard: CreditCard?
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is being deinitialized!")
    }
}

class CreditCard{
    
    let number: String
    unowned let customer: Person//unowned 关键字表示弱引用 保存强引用使用，值不能赋值为nil
    
    init(number: String, customer: Person){
        self.number = number
        self.customer = customer
        print("Credit Card", number, "is initialized")
    }
    
    deinit{
        print("Credit Card", number, "is being deinitialized!")
    }
}

var liuyubobobo: Person? = Person(name: "liuyubobobo")
var goldenCard: CreditCard? = CreditCard(number: "12345678", customer: liuyubobobo!)
liuyubobobo?.creditCard = goldenCard!

liuyubobobo = nil

// unowned is unsafe!

//goldenCard!.customer
//goldenCard

goldenCard = nil

class Country{
    let name : String
    var city : City!
    init(name: String, captail: String) {
        self.name = name
        self.city = City(name: name, captial: self)
    }
    deinit {
        print("deinit")
    }
}
class City {
    var name : String = ""
    var captial : String = ""
    unowned let country: Country
    init(name: String, captial: Country) {
        self.country = captial
        self.name = name
    }
    deinit {
        print("city deinit")
    }
}

var chain : Country? = Country(name: "Chain", captail: "Beijing")
chain = nil
