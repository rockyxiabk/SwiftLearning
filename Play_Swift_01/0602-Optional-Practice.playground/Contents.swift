//: Playground - noun: a place where people can play

import UIKit

var ageInput: String = "16"

let age = Int(ageInput)
age

if let age = Int(ageInput), age<20 {
	print("teenager")
}

var greetings = "hello"

greetings.range(of: "ll")
greetings
greetings.range(of: "mm")
greetings

let rangeOfGreetings = greetings.range(of: "ll")
print(rangeOfGreetings ?? "invalid range")
