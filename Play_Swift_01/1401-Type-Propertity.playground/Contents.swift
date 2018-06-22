//: Playground - noun: a place where people can play

import UIKit
Int.max
Int.min

class Player{
    var name : String
    var score = 0
    static var heightestScore = 0
    
    init(name : String) {
        self.name = name
    }
    
    func play() -> Void {
        let score = Int(arc4random() % 100)
        self.score += score
        if self.score > Player.heightestScore {
            Player.heightestScore = score
        }
    }
}
let player1 = Player(name: "player1")
let player2 = Player(name: "player2")

player1.play()
player1.play()
player2.play()

