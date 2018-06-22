//: Playground - noun: a place where people can play

import UIKit
var a = 1.9
var b : Int = Int(a)
a
b

class MediaItem{
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie: MediaItem{
    var genre: String
    init(name: String, genre: String){
        self.genre = genre
        super.init(name: name)
    }
}

class Music: MediaItem{
    var artist: String
    init(name: String, artistName: String){
        self.artist = artistName
        super.init(name: name)
    }
}

class Game: MediaItem{
    var developer: String
    init(name: String, developer: String){
        self.developer = developer
        super.init(name: name)
    }
}
let library: [MediaItem] = [
    Movie(name: "Zootopia", genre: "Animation"),
    Music(name: "Hello", artistName: "Adele"),
    Game(name: "LIMBO", developer: "Playdead"),
    Music(name: "See you agian", artistName: "Wiz Khalifa"),
    Game(name: "The Bridge", developer: "The Quantum Astrophysicists Guild")
]
//as as?作为开发者尝试转换为目标类型 as!作为开发者知道要转换的目标类型
let item0 = library[0] as! Movie

var musicCount = 0
var movieCount = 0
var gameCount = 0
//for mediaItem in library{
//    //is 关键字
//    if mediaItem is Movie{
//        movieCount += 1
//    }
//    else if mediaItem is Music{
//        musicCount += 1
//    }
//    else if mediaItem is Game{
//        gameCount += 1
//    }
//}
for item in library {
    //as? 关键字
    if let movie = item as? Movie{
        print("movie \(movie.name)")
    }
    if let game = item as? Game{
        print("game \(item.name)")
    }
    if let music = item as? Music{
        print("music \(item.name)")
    }
}

