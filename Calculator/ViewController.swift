//
//  ViewController.swift
//  Calculator
//
//  Created by Philip Barclay on 4/05/16.
//  Copyright © 2016 ARANZ Medical. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var display: UILabel! // ! == automatic unwrapping
    
    private var userIsTyping = false
    
    @IBAction private func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        print("touched \(digit) digit")
        
        if userIsTyping {
            let textDisplay = display.text!
            display.text = textDisplay + digit
        } else {
            display.text = digit
        }
        userIsTyping = true
        
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(sender: UIButton) {
        if userIsTyping {
            brain.setOperand(0.0)
            userIsTyping = false
        }
        if let mathSymbol = sender.currentTitle {
            brain.performOperation(mathSymbol)
        }
        displayValue = brain.result
    }
}

