//: Playground - noun: a place where people can play

import UIKit

enum Coin : Int{
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter =  25
}
print("\(Coin.RawValue(5))")
// 枚举类型的raw value不一定是Int
enum ProgrammingLanguage: String{
    case Swift = "Swift"
    case ObjectiveC = "Objective-C"
    case C = "C"
    case Java = "Java"
}

let myFavoriteLanguage: ProgrammingLanguage = .Swift
print( "\(myFavoriteLanguage.rawValue) is my favorite language.")


// 使用String作为raw value有默认值
enum ProgrammingLanguage2: String{
    case Swift
    case ObjectiveC = "Objective-C"
    case C
    case Java
}

let myFavoriteLanguage2: ProgrammingLanguage2 = .Swift
print( "\(myFavoriteLanguage2.rawValue) is my favorite language.")

// Associate Value 和 Raw value 只能存在一个
enum ATMStatus{
    case Success(Int)
    case Error(String)
    case Waiting    // 可以没有Associate Value
}


// 使用 Associate Value
var balance = 1000

func withdraw( amount: Int ) -> ATMStatus{
    if balance >= amount{
        balance -= amount
        return .Success(balance)
    }
    else{
        return .Error("Not enough money")
    }
}

//let result = withdraw(100)        //swift 2
let result = withdraw(amount: 10000)  //swift 3

// 解包相应的 Associate Value
switch result{
case let .Success(newBalance):
    print("\(newBalance) Yuan left in your account.")
case let .Error(errorMessage):
    print("Error: \(errorMessage)")
case .Waiting:
    print("Waiting for processing")
}

// 忽略相应的 Associate Value
switch result{
case .Success:
    print("Success")
case .Error:
    print("Error")
case .Waiting:
    print("Waiting")
}


