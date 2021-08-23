import UIKit

var cashOnHand: Double = 1000
var runningCash: Double = cashOnHand
var percentGain: Double = 20
var yearsToInvest: Int = 5
var yearsElapsed: Int = 0
 
percentGain = percentGain / 100

repeat {
    runningCash = runningCash + (runningCash * percentGain)
    print(runningCash)
    yearsElapsed += 1
} while yearsElapsed < yearsToInvest
