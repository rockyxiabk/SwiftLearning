//: Playground - noun: a place where people can play

import UIKit

var user = ["name":"jack","pwd":"123","ooc":"android"]

//update
user["name"] = "rocky"
user.updateValue("ios", forKey: "ooc")
print(user)

let oldPwd = user.updateValue("123", forKey: "pwd")
if let oldPwd = oldPwd, let newPwd=user.updateValue("123", forKey: "pwd"), oldPwd == newPwd{
	print("密码一样")
}

//add
user["email"] = "rocky_shine@163.com"
print(user)

//delete
user["ooc"] = nil
print(user)

if let email = user.removeValue(forKey: "email") {
	print(email,"删除成功")
}
user.removeAll()
print(user)
