//: Playground - noun: a place where people can play

import UIKit

//父类
class Avatar{
    var name : String
    //添加 life 值-观察者
    var life = 100{
        //值改变前
        willSet{
            life
            isAlive
        }
        //值变化
        didSet{
            if self.life <= 0 {
                self.isAlive = false
            }
            if self.life > 100 {
                self.isAlive = true
            }
        }
    }
    var isAlive : Bool = true
    
    //必要构造函数
    required init(name : String) {
        self.name = name
    }
    
    //关键字 converience 方便构造函数
    convenience init(firstname: String,lastname: String){
        self.init(name: firstname + "-" + lastname )
    }
    
    func attacked(attach : Int) -> Void {
        life -= attach
        if life <= 0{
            isAlive = false
        }
    }
    func des() -> String {
        return "i am avatar \(name)!"
    }
}

let someone = Avatar(name: "Avatar")
print(someone.name)

class User : Avatar{
    var score = 0
    var level = 0
    var group : String//新添加字段
    
    //group 添加默认为空
    init(name: String,group : String = "") {
        self.group = group
        super.init(name: name)
    }
    //user 独有的方便构造函数
    convenience init(group: String = "") {
        let name = User.generatorname()
        self.init(name: name,group: group)
    }
    //实现父类的必要构造函数 添加关键字 convenience required
    convenience required init(name: String) {
        self.init(name: name,group: "")
    }
    static func generatorname() -> String {
        return "User-" + String(Int(arc4random()%1000))
    }
    /**
     此方法也同样可以被自类重载，如果添加final 关键字 就不会被子类重载
     */
    final func getScore(score : Int) -> Void  {
        self.score = score
        if score > level * 100{
            level +=  1
        }
    }
    override func des() -> String {
        return "i am User \(name)!"
    }
}

let user = User(name: "User")
let user1 = User(name: "User1", group: "group")
let user2 = User(group: "PlanA")
user.getScore(score: 60)
user.name

class Monster: Avatar{
    func attack( user: User , amount: Int ){
        user.attacked(attach: amount)
    }
    override func des() -> String {
        return "i am monster \(name)!"
    }
}

/**
 可进一步继承 User，如果加上关键字 final，此类及不可以被继承了
 */
final class Magician : User{
    var magic = 100
}

let magic = Magician(name: "Magician",group : "User")
magic.name

final class Warrior: User{
    var weapon: String
    init(name: String, group: String ,weapon: String) {
        self.weapon = weapon
        super.init(name: name, group: group)
    }
    convenience override init(name: String, group: String) {
        self.init(name: name, group: group, weapon: "gun")
    }
    override func attacked(attach: Int) {
        self.life -= attach / 2
    }
}

final class Zombie: Monster{
    var type = "Zombie"
}

let player1 = Magician(name: "Harry Potter",group : "Magic")
let player2 = Warrior(name: "Rocky",group : "Warr")
let player3 = Warrior(name: "Dannay", group: "Warr1", weapon: "Axe")
let zombie = Zombie(name: "default zombie1")
let monster = Monster(name: "monster")


// 多态
func printBasicInfo( avatar: Avatar ){
    print("-------------------------------------------------")
    print("| The avatar's name is \(avatar.name)")
    print("| The life is \(avatar.life). He is \( (avatar.isAlive) ? "still alive" : "dead" )" )
    print("-------------------------------------------------")
}

printBasicInfo(avatar: player1)
printBasicInfo(avatar: player2)
printBasicInfo(avatar: zombie)
printBasicInfo(avatar: monster)

//多态的练习
let avtarArr : [Avatar] = [player1,player2,zombie,monster]
for (index,avatar) in avtarArr.enumerated() {
    avatar.life -= (10 * index)
}

printBasicInfo(avatar: player1)
printBasicInfo(avatar: player2)
printBasicInfo(avatar: zombie)
printBasicInfo(avatar: monster)

monster.attack(user: player1, amount: 60)
player1.life
