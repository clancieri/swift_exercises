import UIKit

var greeting = "Hello, playground"
var drawPixel: String = "x"
var height: Int = 10
var tempRow: String

for columnPixel in 1...height {
    tempRow = ""
    for _ in 1...columnPixel {
        tempRow += drawPixel
    }
    print(tempRow)
}

