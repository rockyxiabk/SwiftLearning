//: Playground - noun: a place where people can play

import UIKit
//可选型
var errorCode : Int? = 404
errorCode = 0
print(errorCode ?? "errorCode value is nil")// swift 3中添加的新判断类型


var errorString :String? = "404"
print(errorString ?? "errorString")

"the errorString is"+errorString!


if errorString != nil{
	"the errorCode is" + errorString!
}
else{
	"no error"
}

if let errorString1 = errorString {
	"the errorString is" + errorString1
}
else{
	"no errorString"
}
//swift3 中if-case-where中条件判断关键词“where”简化成“，”
let errorMessage:String? = "not found"
let errorCode1 :String? = "404"
if let errorCode1 = errorCode1 , let errorMessage = errorMessage, errorCode1 == "404"
{ //swift 3
	print("Page not found")
}

