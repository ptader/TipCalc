//: Playground - noun: a place where people can play

import UIKit


class TipCalc {
  var amountBeforeTax: Float = 0
  var tipAmount: Float = 0
  var tipPercent: Float = 0
  
  func calculateTip(amountBeforeTax: Float, tipPercent: Float) -> Float {
    tipAmount = amountBeforeTax * tipPercent
    return tipAmount
  }
}

let newCalc = TipCalc()
let amount = newCalc.calculateTip(10.50, tipPercent: 0.15)
print("\(amount)")
