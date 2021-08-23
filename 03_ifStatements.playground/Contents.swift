/*
 Write an if statement with the logic that [if you have children] then print "Being a parent is hard, my money goes to my children instead of games!".
 Additionally, write an if statement with the logic that [if your Age is greater than 18] then print "Adulting is hard I can't buy the game because I need to pay bills".
 Finally, if none of these is true then print the statement "I'm young and I can do what I want so gimme that game!"

 */
import UIKit

var greeting = "Hello, playground"

let haveChildren = false
var age = 26

if haveChildren == true {
    print("Being a parent is hard, my money goes to my children instead of games!")
}
if age > 18 {
    print("Adulting is hard I can't buy the game because I need to pay bills")
}
else {
    print("Im young and i can do what i want gimme that game")
}
