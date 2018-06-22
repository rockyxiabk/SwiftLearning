//: Playground - noun: a place where people can play

import UIKit
//Generic 泛型


struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}

class Rectangle{
    var origin = Point()
    var size = Size()
    
    init( origin: Point , size: Size ){
        self.origin = origin
        self.size   = size
    }
}

//关键字 extension
extension Rectangle{
    // 如果是struct，就需要使用mutating关键字
    func translate(x: Double, y: Double){
        self.origin.x += x
        self.origin.y += y
    }
    var center: Point {
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
    var area: Double{
        return size.width * size.height
    }
    
    var perimeter: Double{
        return 2*(size.width + size.height)
    }
    // 可以在extension中根据计算性属性放入新的构造函数
    // extension中只能放入convenience的构造函数
    convenience init(center: Point, size: Size){
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        //self.origin = Point(x: originX, y: originY)
        //self.size = size
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let rext = Rectangle(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
rext.origin
rext.translate(x: 1, y: 1)
rext
extension Size{
    mutating func zz() -> Void {
        ""
    }
}

rext.area
rext.perimeter

var ss = Size(width: 1, height: 1)
ss.zz()

