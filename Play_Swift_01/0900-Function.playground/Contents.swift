//: Playground - noun: a place where people can play

import UIKit
//函数
var str = "Hello, playground"
func  sayHellow (name : String) -> String {
    return "hellow" + name
}
var name : String = "jack"
sayHellow(name: name)

//元组返回多个参数
// 给元组分量添加名称，让返回值拥有语意
// 对数组为空的情况，返回nil
func findMaxAndMin( numbers: [Int] ) -> ( max:Int , min:Int )?{
    // 使用guard，让特殊情况拥有语意性
    // 正向逻辑：guard number.count > 0
    guard !numbers.isEmpty else{
        return nil
    }
    
    var minValue = numbers[0]
    var maxValue = numbers[0]
    for number in numbers{
        minValue = min( minValue , number )
        maxValue = max( maxValue , number )
    }
    
    // 返回值如果添加分量名，需要和函数声明部分一致
    return ( maxValue , minValue )
}


var scores: [Int]? = [202, 1234, 5678, 334, 982, 555]

scores = scores ?? []
//if let result = findMaxAndMin( scores! ){      //swift 2
if let result = findMaxAndMin( numbers: scores! ){      //swift 3
    print("The max value is \(result.max)")
    print("The min value is \(result.min)")
}


