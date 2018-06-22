//: Playground - noun: a place where people can play

import UIKit

class Avatar{
    
    var name: String
    var life = 100
    var isAlive: Bool = true
    
    //子类必须要实现的构造函数
   required init(name: String){
        self.name = name
    }
    
    func beAttacked( attack: Int ){
        life -= attack
        if life <= 0{
            isAlive = false
        }
    }
}
let someone = Avatar(name: "Avatar")

// 继承
class User: Avatar{
    
    var score = 0
    var level = 0
    var group : String
    //最后调用 super
    init(name : String, group : String) {
        self.group = group
        super.init(name: name)
    }
    //方便构造函数
    convenience init(group: String = ""){
        let name = User.generateUserName()
        self.init(name:name , group: group)
    }
    convenience required init(name: String) {
        self.init(name: name,group : "")
    }
    static func generateUserName() -> String{
        return "Player" + String(Int(arc4random()%1_000_000))  //swift 3
    }
    
    func getScore(score: Int){
        self.score += score
        if score > level * 100 {
            level += 1
        }
    }
}

//使用final，阻止进一步继承
final class Magician: User {
    
    var magic = 100
    
    func heal( user: User ){
        user.life += 10
    }
    
}

final class Warrior: User{
    
    var weapon: String?
    
    convenience override init(name: String, group: String) {
        //let weapon = Warrior.weapon[Int(arc4random()%3)]   //swift 3
        self.init(name: name, group: group)
    }
    
    //方法重载
    override
    func beAttacked(attack: Int) {
        life -= attack/2
    }
}

class Monster: Avatar{
    
    func attack( user: User , amount: Int ){
        user.beAttacked(attack: amount)  //swift 3
    }
}

final class Zombie: Monster{
    
    var type = "Default"
}

class NPC :Avatar{
    let carrer : String
    init(name : String , carrer : String) {
        self.carrer = carrer
        super.init(name: name)
    }
    //子类必须要实现的构造函数 关键字 convenience required
   convenience required init(name: String) {
        self.init(name: name, carrer: "carrer")
    }
}


let player1 = Magician(name: "Harry Potter",group : "danny")
//let player2 = Warrior(name: "liuyubobobo",group : "jack")

let zombie = Zombie(name: "default zombie1")

let monster = Monster(name: "monster")


// 多态
func printBasicInfo( avatar: Avatar ){
    
    print("The avatar's name is \(avatar.name)")
    print("The life is \(avatar.life). He is \( (avatar.isAlive) ? "still alive" : "dead" )" )
    print("======")
}

printBasicInfo(avatar: player1)
//printBasicInfo(avatar: player2)
printBasicInfo(avatar: zombie)
printBasicInfo(avatar: monster)



let avatarArr: [Avatar] = [ player1 , zombie , monster ]
for avatar in avatarArr{
    avatar.life -= 10
}

