//: Playground - noun: a place where people can play

import UIKit

//switch 高级 break  containu fallthrough return throw
//定一个算法公式 x^4 - y^2 = 15*x*y

findAnswer:
for n in 1...300{
    for  m in 1...300{
        if n*n*n*n - m*m == 15*m*n {
            print(m,n)
            break findAnswer
        }
    }
}
