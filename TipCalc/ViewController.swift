//
//  ViewController.swift
//  TipCalc
//
//  Created by Paul Tader on 11/22/15.
//  Copyright © 2015 CircleTee. All rights reserved.
//

import UIKit

var amountBeforeTax: Float = 0.0
var tipPercent: Float = 0.0


class ViewController: UIViewController {
 
  @IBOutlet weak var AmountBeforeTaxView: UITextField!
  @IBOutlet weak var TipPercentView: UITextField!
  @IBOutlet weak var TotalTextView: UITextField!
  
  let tipCalc = TipCalc()

  
  @IBAction func CalcTipButton(sender: AnyObject) {
    print("Contents of the AmountBeforeTaxView text field: \(AmountBeforeTaxView.text)")
    print("Contents of the TipPercentView text field: \(TipPercentView.text)")

    if AmountBeforeTaxView.text != "" {
      amountBeforeTax = Float(AmountBeforeTaxView.text!)!
      print("The amountBeforeTax is: \(amountBeforeTax)")
    }
    
    if TipPercentView.text != "" {
      tipPercent = Float(TipPercentView.text!)!
      print("The tipPercent is \(tipPercent)")
    }
  
    let total = tipCalc.calculateTip(amountBeforeTax, tipPercent: tipPercent)! + amountBeforeTax
    print("The total is: \(total)")
    TotalTextView.text = String(total)

    
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

