import UIKit

var greeting = "Hello, playground"
let strOperator: String = "*"
var num1: Int = 4
var num2: Int = 2
var result: Int = 0

switch strOperator {
case "+":
    result = num1 + num2
    print(result)
case "-":
    result = num1 - num2
    print(result)
case "*":
    result = num1 * num2
    print(result)
case "/":
    result = num1 / num2
    print(result)
default:
    print("Operator does not exist")
    
}
