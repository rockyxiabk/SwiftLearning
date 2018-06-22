//: Playground - noun: a place where people can play

import UIKit

//Lazy Property 延迟属性 关键字 Lazy
class ClosedRange1{
    let start : Int
    
    let end : Int
    
    var width  : Int{
        return end - start + 1
    }
    
   lazy  var sum : Int = {
        
        var res = 0
        for i in self.start...self.end {
            res += i
        }
        return res
    }()

    init?( start:Int , end:Int ){
        if start > end{
            return nil
        }
        
        self.start = start
        self.end = end
        
    }
}
if let range = ClosedRange1(start: 1, end: 100 ){
    range.width
    range.sum
    range.sum

}

