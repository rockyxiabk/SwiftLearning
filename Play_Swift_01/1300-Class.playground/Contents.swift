//: Playground - noun: a place where people can play

import UIKit

class Person{
    var  firstName : String
    var lastName : String
    var career : String?
    
    init(firstName :String ,lastName : String ,career : String) {
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    init?(fullName: String){
        guard
            let spaceIndex = fullName.range(of: " ")?.lowerBound
            else{
                return nil
        }
        
        self.firstName = String(fullName[...spaceIndex])
        self.lastName = String(fullName[fullName.index(after: spaceIndex)...])      //swift 4
    }
    
    func fullName() -> String{
        return firstName + " " + lastName
    }
}

let person = Person(firstName: "xia", lastName: "bk", career: "android")
//引用类型 指向同意内存空间，相当于起了一个别名
let person1 = person
person1.firstName = "jack"
person1
person

// ===值判断
person === person1
person !== person1

//结构体 改变自身变量--mutating
struct Location{
    var x = 0
    var y  = 0
    
    mutating func click(){
        self.x += 1
    }
}
var loc = Location()
loc.click()
enum Switch{
    case On
    case Off
    
    mutating func click(){
        switch self{
        //case On:         //swift 2
        case Switch.On:    //swift 3
            self = .Off
        //case Off:        //swift 2
        case Switch.Off:   //swift 3
            self = .On
        }
    }
}

var button = Switch.Off
button.click()


