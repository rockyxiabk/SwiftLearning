//: Playground - noun: a place where people can play

import UIKit
//普通函数编写，使用判断语句实现
func buy( money: Int , price: Int , capacity: Int , volume: Int){
    if money >= price{
        if capacity >= volume{
            print("I can buy it!")
            print("\(money-price) Yuan left.")
            print("\(capacity-volume) cubic meters left")
        }
        else{
            print("No enough capacity")
        }
    }
    else{
        print("Not enough money")
    }
}

//使用guard 关键字来替代判断语句
func buy_guard( money: Int, price: Int ,capacity: Int , volume: Int){
    guard money >= price else {
        print("not enough money")
        return
    }
    guard capacity >= volume else{
        print("not enough capacity")
        return
    }
    print("I can buy it!")
    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left")
    
}

buy_guard(money: 50, price: 10, capacity: 50, volume: 20)
