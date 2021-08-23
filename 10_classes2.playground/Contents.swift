import UIKit

class Pets {
    var name:String = ""
    var age:Int = 0
    
    func feed() {
        print("\(name) has been fed")
    }
    func clean() {
        print("\(name) has taken a bath")
    }
    func play() {
        print("\(name) enjoyed playing with you")
    }
    func sleep() {
        print("\(name) went to sleep")
    }
    
}
class Tamagotchi: Pets {
    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness: Int = 0
    
    override func feed(){
        super.feed()
        dirt = 20
        hunger = 0
        boredom = 20
        drowsiness = 10
    }
    override func clean() {
        super.clean()
        dirt = 0
        hunger = 20
        boredom = 20
        drowsiness = 10
    }
    override func play() {
        super.play()
        boredom = 0
        hunger = 20
        dirt = 20
        drowsiness = 10
    }
    override func sleep() {
        super.sleep()
        drowsiness = 0
        boredom = 20
        hunger = 20
        dirt = 10
    }
    func check(){
        print(hunger)
        print(dirt)
        print(boredom)
        print(drowsiness)
    }
}

var game:Tamagotchi = Tamagotchi()
game.name = "Uma"
game.feed()
game.check()

