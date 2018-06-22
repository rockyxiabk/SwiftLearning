import Foundation

//单例模式
public class GameManager{
    public static let game = GameManager()
    public var score = 0
    public var level = 0
    private init() {
        
    }
    public func addAcore(){
        score += 10
    }
}
