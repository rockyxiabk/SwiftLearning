//: Playground - noun: a place where people can play

import UIKit

//属性观察器 didset  willSet
class LightBulb {
    static let maxCurrent = 30
    var current = 0{
        willSet(newCurrent){
            print("Change")
        }
        
        didSet(oldCurrent){
            if current == LightBulb.maxCurrent{
                print("max")
            }
            else if current > LightBulb.maxCurrent{
                current = oldCurrent
            }
            print("the current is \(current)")
        }
    }
}
let bulb = LightBulb()
bulb.current = 20
bulb.current = 30
bulb.current = 40

enum Theme {
    case DayMode
    case NightMode
}

class UI{
var fontC  : UIColor!
var bgC : UIColor!
var theme : Theme = Theme.DayMode{
        didSet{
            switch(theme){
            case .DayMode:
                fontC = UIColor.black                  //swift 3
                bgC = UIColor.white            //swift 3
            case .NightMode:
                fontC = UIColor.white                  //swift 3
                bgC = UIColor.black            //swift 3
            }
        }
    }
    
    
    init(){
        self.theme = .DayMode
        fontC = UIColor.black                  //swift 3
        bgC = UIColor.white            //swift 3
    }
    
    init(themeMode: Theme){
        self.theme = themeMode
        switch(themeMode){
        case .DayMode:
            fontC = UIColor.black                  //swift 3
            bgC = UIColor.white            //swift 3
        case .NightMode:
            fontC = UIColor.white                  //swift 3
            bgC = UIColor.black            //swift 3
        }
    }
}


let ui = UI()
ui.theme
ui.fontC
ui.bgC

ui.theme = .NightMode
ui.fontC
ui.bgC
