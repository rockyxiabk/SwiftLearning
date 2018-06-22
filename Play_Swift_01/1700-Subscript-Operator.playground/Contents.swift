//: Playground - noun: a place where people can play

import UIKit

struct Vector3{
    var x: Double = 0.0
    var y: Double  = 0.0
    var z: Double = 0.0
    
    subscript(index: Int) -> Double?{
        get{
        switch index{
        case 0: return x
        case 1: return y
        case 2: return z
        default: return nil
        }
        }
        set{
            guard let newValue = newValue else{
                return
            }
            switch index{
            case 0: x = newValue
            case 1: y = newValue
            case 2: z = newValue
            default: return
            }
        }
    }
    subscript(axis:String) -> Double?{
        get{
            switch axis{
            case "x","X": return x
            case "y","Y": return y
            case "z","Z": return z
            default: return nil
            }
        }
        
        set{
            guard let newValue = newValue else{ return }
            
            switch axis{
            case "x","X": x = newValue
            case "y","Y": y = newValue
            case "z","Z": z = newValue
            default: return
            }
        }
    }
    func length() -> Double{
        return sqrt( x*x + y*y + z*z )
    }
}
//运算符重载 在结构体外定义
func + (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x + right.x, y: left.y + right.y, z: left.z + right.z)
}

func - (left: Vector3, right: Vector3) -> Vector3{
    return Vector3(x: left.x - right.x, y: left.y - right.y, z: left.z - right.z)
}

func * (left: Vector3, right: Vector3) -> Double{
    return left.x * right.x + left.y * right.y + left.z * right.z
}

func * (left: Vector3, a: Double) -> Vector3{
    return Vector3(x: left.x * a, y: left.y * a, z: left.z * a)
}

func += (left: inout Vector3, right: Vector3){
    left = left + right
}

//自定义运算符 后置运算符关键字 postfix
postfix operator +++
postfix func +++ (vector: inout Vector3) -> Vector3{
    let addOn = Vector3(x: 1.0, y: 1.0, z: 1.0)
    vector += addOn
    return vector
}
var post = Vector3(x: 3, y: 5, z: 9)
post+++

//自定义运算符 前置运算符关键字 prefix
prefix operator +++
prefix func +++ (vector: inout Vector3) -> Vector3{
    let ret = vector
    let addOn = Vector3(x: 1.0, y: 1.0, z: 1.0)
    vector += addOn
    return ret
}

//计算两个向量夹角
infix operator ^
func ^ (left: Vector3, right: Vector3) -> Double{
    return acos( ( left * right ) / (left.length() * right.length()) )
}

let va = Vector3(x: 1.0, y: 2.0, z: 3.0)
let vb = Vector3(x: 4.0, y: 5.0, z: 6.0)
va ^ vb
var v = Vector3(x: 1.0, y: 2.0, z: 3.0)
v.x
v[0]
v[100]

v["z"]
v["Y"]
v["Hello"]

v[0] = 100.0
v


var left = Vector3(x: 1, y: 2, z: 4)
let right = Vector3(x: 2, y: 5, z: 9)
left + right
left - right
left * right
left * 4
var temp = Vector3(x: -3, y: 9, z: 0)
temp += left
temp

var a = [1,5,7,2,3]
a.sort(by: >)
a


struct Matrix{
    
    var data:[[Double]]
    let r:Int
    let c:Int
    
    init(row:Int, col:Int){
        self.r = row
        self.c = col
        data = [[Double]]()
        for _ in 0..<r{
            let aRow = Array(repeatElement(0.0, count: col))     //swift 4
            data.append(aRow)
        }
    }
    
    subscript(x: Int, y: Int) -> Double{
        
        get{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            return data[x][y]
        }
        
        set{
            assert( x >= 0 && x < r && y >= 0 && y < c , "Index Out of Range")
            data[x][y] = newValue
        }
    }
    
    // 如果想使用 m[1][1]
    subscript(row: Int) -> [Double]{
        
        get{
            assert( row >= 0 && row < r , "Index Out of Range")
            return data[row]
        }
        
        set(vector){
            assert( vector.count == c , "Column Number does NOT match")
            data[row] = vector
        }
    }
}

var m = Matrix(row: 2, col: 2)
m[1,1]


// 如果想使用 m[1][1]
m[1][1]
m[1]

m[0] = [1.5,4.5]
m[0][0]
m[0][1]

precedencegroup ExponentPrecedence{
    associativity: right
    higherThan: MultiplicationPrecedence
}
infix operator **: ExponentPrecedence
func **(x: Double, p:Double) -> Double{
    return pow(x,p)
}

2**3
2**3**2
1+2**3**2
5*2**3**2
