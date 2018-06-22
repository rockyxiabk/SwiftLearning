//: Playground - noun: a place where people can play

import UIKit

struct Location{
    
    let latitude: Double
    let longitude: Double
    var placeName: String?
    
    
    init(latitude: Double, longitude: Double, placeName: String){
        
        self.latitude = latitude
        self.longitude = longitude
        self.placeName = placeName
    }
    
    init(latitude: Double, longitude: Double){
        
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(){
        latitude = 0.0
        longitude = 0.0
    }
    
    // 使用Failable-Initializer
    init?(coordinateString: String){
        
        // 第一种写法，层层嵌套可选型的解包
        // swift 1.0的
        //swift 2: if let commaIndex = coordinateString.rangeOfString(",")?.startIndex{
        //在Swift3中，API的命名原则被大幅度调整。大多数函数的名字发生了改变。不过使用方法基本相同。
//        if let commaIndex = coordinateString.range(of:",")?.lowerBound{           //swift 3
//            if let firstElement = Double(coordinateString[..<commaIndex]){                      //swift 3
//                if let secondElement = Double(coordinateString[coordinateString.index(after: commaIndex)...]){     //swift 3
//                    latitude = firstElement
//                    longitude = secondElement
//                }
//                else{
//                    return nil
//                }
//            }
//            else{
//                return nil
//            }
//        }
//        else{
//            return nil
//        }
        
        // 第二种写法，使用guard提高可读性
        //swift 2: guard let commaIndex = coordinateString.rangeOfString(",")?.startIndex else{
        //在Swift3中，API的命名原则被大幅度调整。大多数函数的名字发生了改变。不过使用方法基本相同。
//        guard let commaIndex = coordinateString.range(of: ",")?.lowerBound else{          //swift 3/4
//            return nil
//        }
//
//        //guard let firstElement = Double(coordinateString.substringToIndex(commaIndex)) else{   //swift 2
//        guard let firstElement = Double(coordinateString[..<commaIndex]) else{                   //swift 4
//            return nil
//        }
//
//        //guard let secondElement = Double(coordinateString.substringFromIndex(commaIndex.successor())) else{        //swift 2
//        guard let secondElement = Double(coordinateString[coordinateString.index(after: commaIndex)...])   else{     //swift 4
//            return nil
//        }
//
//        latitude = firstElement
//        longitude = secondElement
        
        // 第三种写法，在guard中并列解包
        guard
            //swift 2: let commaIndex = coordinateString.rangeOfString(",")?.startIndex
            //在Swift3中，API的命名原则被大幅度调整。大多数函数的名字发生了改变。不过使用方法基本相同。
            let commaIndex = coordinateString.range(of: ",")?.lowerBound,                                  //swift 3/4
            //let firstElement = Double(coordinateString.substringToIndex(commaIndex))                    //swift 2
            let firstElement = Double(coordinateString[..<commaIndex]),                                    //swift 4
            //let secondElement = Double(coordinateString.substringFromIndex(commaIndex.successor()))     //swift 2
            let secondElement = Double(coordinateString[coordinateString.index(after: commaIndex)...])    //swift 4
            else{
                return nil
        }
        
        latitude = firstElement
        longitude = secondElement
    }
    func printLocation() -> Void {
        print("---\(self.latitude)----\(self.longitude)")
    }
}


let location = Location(coordinateString: "37.3230,-122.0322")
location?.printLocation()
let location2 = Location(coordinateString: "37.3230,-122.0322")!

let location3 = Location(coordinateString: "37.3230&-122.0322")
let location4 = Location(coordinateString: "apple,-122.0322")
let location5 = Location(coordinateString: "37.3230,apple")
let location6 = Location(coordinateString: "Hello, World!")

// enum也可以有方法
enum Shape{
    case Square(side: Double)
    case Rectangle(width: Double, height: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point
    
    func area() -> Double{
        
        switch self {
        case let .Square(side):
            return side*side
        case let .Rectangle( width , height ):
            return width * height
        case let .Circle( _ , _ , r ):
            //swift 2: return M_PI*r*r
            //swift3中PI放在了Double类下。这样是不是更方便记忆？
            return .pi*r*r      //swift 3
        case .Point:
            return 0
        }
    }
}


let square = Shape.Square(side: 10)
let rectangle = Shape.Rectangle(width: 20, height: 30)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 15)
let point = Shape.Point

square.area()
rectangle.area()
circle.area()
point.area()

