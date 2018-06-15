//: Playground - noun: a place where people can play

import UIKit
//数组 二维数组
var board = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:[[Int]] = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:[Array<Int>] = = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:Array<[Int]> = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:Array<Array<Int>> = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]


// 二维数组获取元素
board[0]
board[0][0]


// 获取二维数组两个维度的信息
board.count
board[0].count


// Swift中的二维数组，每一维度的元素数目可以不同
board[0].append(0)
board


// 为二维数组的第一个维度添加的元素是一个数组
board.append([0,0,0,0])
board += [ [0,0,0,0] ]
board

//NSArray  NS->nextStep jobs在离开apple期间的公司
var ns : NSArray = []
var ns1 = [1,2,3,4,6] as NSArray
print(ns1)

var ns2: NSArray = [1, "swift"]

var ns3: Array<NSObject> = [1 as NSNumber, "apple" as NSString ]
print(ns3)
