//: Playground - noun: a place where people can play

import UIKit

//控制流
//三种：顺序结构 循环结构 选择结构

//循环结构
for i in -99...99{
    i*i
}
for i in 1..<10{
    i
}
//reversed 反向遍历
for i in (1..<10).reversed(){
    i
}
//stride的使用 设置起点和终点和步长
for i in stride(from: 1, to: 10, by: 1.5) {
 print(i)
    i
}
