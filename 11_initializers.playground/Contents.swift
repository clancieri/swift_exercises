import UIKit
import Foundation

class Pets{
    var name:String = ""
    var age:Int = 0
    
    init(){
        name = "bird";
    }
    
    init(_ name:String){
        self.name = name;
    }
    
    func feed(){
        print("\(name) has been fed");
    }
    
    func clean(){
        print("\(name) has taken a bath");
    }
    
    func play(){
        print("\(name) enjoyed playing with you");
    }
    
    func sleep(){
        print("\(name) went to sleep");
    }
    
}


var pet = Pets()
print(pet.name)
var pet2 = Pets("doggy")
print(pet2.name)


class Tamagotchi : Pets{
    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness:Int = 0
    
    override init(){
        super.init();
        boredom = 60;
    }
    
    override init(_ name:String){
        super.init(name);
        boredom = 60;
    }
    
    
    override func feed(){
        if(hunger == 0){
            print("\(name) is already full")
        }
        else{
            super.feed();
            hunger = 0;
            dirt += 20;
            boredom += 20;
            drowsiness += 10;
        }
    }
    
    override func clean(){
        if(dirt == 0){
            print("\(name) is already clean")
        }
        else{
            super.clean();
            dirt = 0;
            boredom += 20;
            hunger += 20;
            drowsiness += 10;
        }
    }
    
    override func play(){
        if(boredom  == 0){
            print("\(name) is already done playing")
        }
        else{
            super.play();
            boredom = 0;
            dirt += 20;
            hunger += 20;
            drowsiness += 10;
        }
    }
    
    override func sleep(){
        if(drowsiness == 0){
            print("\(name) has already slept")
        }
        else{
            super.sleep();
            drowsiness = 0;
            hunger += 20;
            boredom += 20;
            dirt += 10;
        }
    }
    
    func check(){
        print("hunger: \(hunger)");
        print("dirt: \(dirt)");
        print("boredom: \(boredom)");
        print("drowsiness: \(drowsiness)");
        
        if(hunger >= 60){  print("\(name) is hungry"); }
        if(dirt >= 60){ print("\(name) is dirty"); }
        if(boredom >= 60){ print("\(name) is bored"); }
        if(drowsiness >= 60){  print("\(name) is tired"); }
    }
    
}

var game = Tamagotchi()
game.name = "bird"
game.play()
game.play()
game.check()
game.feed()
game.check()
game.play()
game.check()
game.clean()
game.check()
game.sleep()
game.check()
