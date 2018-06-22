//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    var pet: Pet?
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    init(name: String, petName: String){
        self.name = name
        self.pet = Pet(name: petName);
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is deinitialized!")
    }
}
class Pet{
    
    var name: String
    init(name: String){
        self.name = name;
        print("Pet", name, "is initialized");
    }
    
    deinit{
        print("Pet", name, "is deinitialized!")
    }
}

//reference count 引用计数
var person: Person? = Person(name: "rocky")
var pet : Pet? = Pet(name: "cat")
person?.pet = pet
person = nil
pet = nil

var person1 : Person? = Person(name: "person1")
var person2 = person1//内存空间的指向
var person3 = person2//同上
//count 3
person1 = nil//count 2
person2 = nil//count 1
person3 = nil//count 0 回收

//ARC（Automatic Reference Count）
