//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Philip Barclay on 4/05/16.
//  Copyright © 2016 ARANZ Medical. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    func performOperation(symbol: String) {
    
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}


//if mathSymbol == "∏" {
//    displayValue = M_PI
//} else if mathSymbol == "√" {
//    displayValue = sqrt(displayValue)
//}