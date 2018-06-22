//: Playground - noun: a place where people can play

import UIKit

func sayHelloTo( name : String, greeting : String) ->String {
    return "name:\(name),greeting:\(greeting)"
}
sayHelloTo(name: "rocky", greeting: "hellow")
 var arr = [0,1,2,3,4,5,6]
arr.insert(10, at: 3)

var str = "hello  playground"
str.replaceSubrange(str.startIndex..<str.index(str.startIndex, offsetBy: 5), with: "Hi")    //swift 3
str.replacingOccurrences(of: "Hi", with: "Moring")

//参数的外显参数名设置，第一个参数默认不显示，不建议如下设置
func sayHelloTo1(to name :String , withGreetingWord greeting: String) ->String{
    return "\(name)+\(greeting)"
}

sayHelloTo1(to: "java", withGreetingWord: "hi")

//设置函数的默认参数值
func sayHelloTo2(name: String, withGreetingWord greeting: String = "hello") ->String{
    return "\(name),\(greeting)"
}
sayHelloTo2(name: "rocky")
sayHelloTo2(name: "rocky", withGreetingWord: "how are you")


func sayHello(to name: String = "Swift",greeting: String = "hello", pur :String = "!!!") ->String{
    return "\(name),\(greeting)\(pur)"
}
sayHello()
sayHello(to: "PlayGround", greeting: "how are you", pur: "?")
