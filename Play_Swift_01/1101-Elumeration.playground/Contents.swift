//: Playground - noun: a place where people can play

import UIKit
//Swift 面向对象编程
//枚举的定义
// 使用静态变量
let NORTH = 1
let SOUTH = 2
let EAST  = 3
let WEST  = 4
var direction3 = NORTH
if direction3 == NORTH{
    print("It's north")
}

let BEIJING = 1
let SHANGHAI = 2
let GUANGZHOU = 3
let SHEHNZHEN = 4
let HONGKONG = 5

// 无法控制范围
direction3 = HONGKONG

// 也无法控制语意
let LEFT  = 1
let RIGHT = 2
let UP    = 3
let DOWN  = 4
direction3 = LEFT


// 更多使用Enumeration的场景：
// 扑克牌的花色
// 颜色
// 控制系统的权限（管理员，VIP，普通用户...）
// 设置：左对齐、右对齐、居中对齐
// 状态机
// 定义枚举类型
enum Month : Int{
    case January  = 1
    case February = 2
    case March = 3
    case April = 4
    case May = 5
    case June = 6
    case July = 7
    case August = 8
    case September = 9
    case October = 10
    case November = 11
    case December = 12
}

enum Season{
    case Spring
    case Summer
    case Autumn
    case Winter
}
//let month: Month = Month.April
let month = Month.August

// 使用枚举类型
func season( month: Month ) ->Season{
    
    switch month{
    case Month.March, Month.April, Month.May:
        return Season.Spring
    case Month.June, Month.July, Month.August:
        return Season.Summer
    case Month.September, Month.October, Month.November:
        return Season.Autumn
    case Month.December, Month.January, Month.February:
        return Season.Winter
    }
}
season(month: month)


// 使用raw value
func monthsBeforeNewYear( month: Month ) -> Int{
    return 12 - month.rawValue
}


// 使用raw value初始化枚举类型
let curMonth = Month(rawValue: 4)
monthsBeforeNewYear(month: month)
