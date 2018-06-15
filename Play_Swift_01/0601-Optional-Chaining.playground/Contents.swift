//: Playground - noun: a place where people can play

import UIKit

//optional chaining
var errorMessage: String? = nil

let message: String
if let errorMessage = errorMessage{
	message = errorMessage
}
else{
	message = "No error"
}

// 使用三目运算符
let message2 = errorMessage == nil ? "No error" : errorMessage!
// 注意: 此时使用errorMessage需要强制解包.以保证message2是一个String，而非String?
// 三目运算符?:的实质就是一个if else

// 使用 ??
let message3 = errorMessage ?? "No error"

//optional in tuple
//var aa:(errorCode: Int,errorString: String?) = (404,"not found")
//aa.errorString = nil
//
//var aa:(errorCode: Int,errorString: String)? = (404,"not found")
//aa = nil

var aa:(errorCode: Int,errorString: String?)? = (404,"not found")
aa = nil
aa?.errorString = nil
