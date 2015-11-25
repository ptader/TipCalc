//
//  TipCalc.swift
//  TipCalc
//
//  Created by Paul Tader on 11/22/15.
//  Copyright © 2015 CircleTee All rights reserved.
//

import Foundation

class TipCalc {
/*  var amountBeforeTax: Float?
  var tipAmount: Float?
  var tipPercent: Float?
  
*/
  
  func calculateTip(amountBeforeTax: Float, tipPercent: Float) -> Float? {
    let tipAmount = amountBeforeTax * tipPercent
    return tipAmount
  }
}