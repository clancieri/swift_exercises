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
    
    init(){
        name = "Uma"
    }
    init(_ name:String) {
        self.name = name
    }
    
}
class Tamagotchi: Pets {
    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness: Int = 0
    
    override init(_ name: String) {
        super.init(name)
        boredom = 60
    
        
    }
    
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

let myPet = Pets("Cachengue")
print(myPet.name)



