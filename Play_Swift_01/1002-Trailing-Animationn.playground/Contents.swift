//: Playground - noun: a place where people can play

import UIKit
 let showView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
let  rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.backgroundColor = UIColor.red
rectangle.center = showView.center
showView.addSubview(rectangle)

UIView.animate(withDuration: 2.0){         //swift 3
    //rectangle.backgroundColor = UIColor.blueColor()   //swift 2
    rectangle.backgroundColor = UIColor.blue            //swift 3
    rectangle.frame = showView.frame
}

// swift 2: XCPlaygroundPage.currentPage.liveView = showView
// 这个方法在swift4中还能用，但是语法已经过时了。swift下一个版本有可能彻底地将语法改变
// 报错（警告）：'liveView' is deprecated: Use 'PlaygroundPage.current.liveView' from the 'PlaygroundSupport' module instead

import PlaygroundSupport   //要想移除这个报错，要引入这个文件。然后，将'XCPlaygroundPage.currentPage.liveView'改成'PlaygroundPage.current.liveView'

PlaygroundPage.current.liveView = showView    //swift 4
