//: Playground - noun: a place where people can play

import UIKit

var arr:[Int] = []
for _ in 0..<100{
    //swift3中使用arc4random或者arc4random_uniform方法
    arr.append(Int(arc4random()%1000))   //swift 3
}


// 定义比较函数完成自定义排序
func biggerNumberFirst(a:Int , _ b:Int) -> Bool{
    return a > b
}

//swift 2: arr.sort(biggerNumberFirst)
//swift 3中sort()的API改成了sorted(by: ) 这点和python比较像
//在这里引用一下慕课网用户"慕大神仙"的解释:
//如果大家使用的是swift3.0版本，那么需要注意：
//2.0版本中的方式是 sort() 和 sortInPlace()
//而在3.0版本中以上方法被修改为 sorted() sort()
//新版中 sorted()是不会改变原数组的值，而sort()是会改变原数组的值，这点与2.0是不一样的
//arr.sorted(by: biggerNumberFirst)   //swift 3

//arr.sort(by: {(a: Int, b : Int)->Bool in return a > b })
//arr.sort(by:{ a , b in return  a > b} )
//arr.sort { (a, b) -> Bool in
//    return a>b
//}
arr.sort(by: >)
//arr.sorted(by: >)
arr
