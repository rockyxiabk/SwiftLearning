//: Playground - noun: a place where people can play

import UIKit
enum Shape{
    case Square(side :Double)
    case Rectangle(width: Double ,height: Double)
    case Circle(centerx: Double,centery: Double ,radius: Double)
    case Point
}
let square = Shape.Square(side: 10.0)
let rectangle = Shape.Rectangle(width: 10, height: 10)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 5)
let point = Shape.Point

func area(shape: Shape) -> Double{
    switch shape {
    case let .Square(side):
        return side*side
    case let .Rectangle( width , height ):
        return width * height
    case let .Circle( _ , _ , r ):  // 使用_忽略没用的参数
        //swift 2: return M_PI*r*r
        //swift3中PI放在了Double类下。这样是不是更方便记忆？
        return .pi*r*r
    //swift 3, 这里是因为返回值声明了是Double，所以直接用.即可。正常情况下用Double.pi
    case .Point:
        return 0
    }
}

area(shape: square)
area(shape: rectangle)
area(shape: circle)
area(shape: point)
