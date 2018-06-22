//: Playground - noun: a place where people can play

import UIKit
//结构体 关键字 struct
struct Location {
    let latitude : Double
    let longitude : Double
    
    //初始化构造函数
    init( _ coordinateString : String) {
        let commaIndex = coordinateString.range(of: ",")!.lowerBound
        let firstElement = coordinateString[..<commaIndex]                   //swift 4, 使用切片
        let secondElement = coordinateString[coordinateString.index(after: commaIndex)...]
        latitude = Double(firstElement)!
        longitude = Double(secondElement)!
    }
    init(latitude : Double, longitude : Double) {
        self.longitude = longitude
        self.latitude = latitude
    }
}

// 初始化一个结构体
let appleHeadQuarterLocation = Location(latitude: 37.3230, longitude: -122.0322)
let googleHeadQuarterLocation: Location = Location(latitude: 37.4220, longitude: -122.0841)

appleHeadQuarterLocation.latitude
appleHeadQuarterLocation.longitude

struct Place {
    let location : Location
    var name  : String
}

var googlePlace = Place(location: googleHeadQuarterLocation, name: "google")
googlePlace.name
googlePlace.location.latitude

let location = Location( "37.3230,-122.0322")

