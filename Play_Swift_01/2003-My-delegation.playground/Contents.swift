//: Playground - noun: a place where people can play

import UIKit


//委托代理
@objc protocol TurnBasedGameDelegate{
    
    func gameStart()
    func playerMove()
    func gameEnd()
    
    @objc optional func turnStart()
    @objc optional func turnEnd()
    func gameOver() -> Bool
}

//协议
protocol TurnBasedGame{
    
    var turn: Int{get set}
    
    func play()
}

//实现类
class SinglePlayerTurnBasedGame: NSObject, TurnBasedGame{
    
    var delegate:TurnBasedGameDelegate!
    var turn = 0
    
    func play(){
        
        delegate.gameStart()
        while !delegate.gameOver() {
            print("ROUND",turn,":")
            delegate.playerMove()
            turn += 1
        }
        delegate.gameEnd()
    }
}

//具体实现类 继承游戏基础和代理类
class RollNumberGame: SinglePlayerTurnBasedGame, TurnBasedGameDelegate{
    
    var score = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    func gameStart() {
        
        score = 0
        turn = 0
        
        print("Welcome to Roll Number Game.")
        print("Try to use least turn to make total 100 scores!")
    }
    
    func playerMove() {
        let rollNumber = Int(arc4random())%6 + 1
        score += rollNumber
        print("You rolled a" , rollNumber , "! The score is",score,"now!")
    }
    
    func gameEnd() {
        print("Congratulation! You win the game in" , turn , "ROUND!")
    }
    
    func gameOver() -> Bool{
        return score >= 30
    }
    func turnStart() {
        print("start")
    }
    func turnEnd() {
        print("end")
    }
}


let rollingNumber = RollNumberGame()
rollingNumber.play()



class RockPaperScissors: SinglePlayerTurnBasedGame, TurnBasedGameDelegate{
    
    enum Shape: Int, CustomStringConvertible{
        case Rock
        case Scissors
        case Papper
        
        func beat(shape: Shape) -> Bool{
            return (self.rawValue + 1)%3 == shape.rawValue
        }
        
        var description: String{
            
            switch(self){
            case .Papper:   return "Paper"
            case .Rock:     return "Rock"
            case .Scissors: return "Scissors"
            }
        }
    }
    
    var wins = 0
    var otherWins = 0
    
    override init() {
        super.init()
        delegate = self
    }
    
    static func go() -> Shape{
        return Shape(rawValue: Int(arc4random())%3)!
    }
    
    func gameStart() {
        wins = 0
        otherWins = 0
        print("== Rock Paper Scissor ==")
    }
    
    func gameOver() -> Bool {
        //return turn >= 3
        return wins >= 2 || otherWins >= 2
    }
    
    func gameEnd() {
        if( wins >= 2 ){
            print("YOU WIN!")
        }
        else{
            print("YOU LOSE...")
        }
    }
    
    func playerMove() {
        
        let yourShape = RockPaperScissors.go()
        let otherShape = RockPaperScissors.go()
        print("Your:",yourShape)
        print("Other:",otherShape)
        
        //if yourShape.beat(otherShape){                //swift 2
        if yourShape.beat(shape: otherShape){           //swift 3
            print("You win this round")
            wins += 1
        }
            //else if otherShape.beat(yourShape){           //swift 2
        else if otherShape.beat(shape: yourShape){      //swift 3
            print("You lose this round")
            otherWins += 1
        }
        else{
            print("Tie in this round")
        }
    }
    
}

let rockPaperScissors = RockPaperScissors()
rockPaperScissors.play()
