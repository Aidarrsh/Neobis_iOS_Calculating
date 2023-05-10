//
//  Model.swift
//  Neobis_iOS_Calculating
//
//  Created by Айдар Шарипов on 7/5/23.
//

import UIKit

enum Operation {
    case add, subtract, multiply, divide
}

struct CalculatorModel {
    var operand1: Double = 0
    var operand2: Double = 0
    var currentOperation: Operation?
    
    func performOperation(_ operation: Operation) -> Double? {
        if currentOperation != nil && operand2 == 0 {
            return nil
        }
        switch operation {
        case .add:
            return operand1 + operand2
        case .subtract:
            return operand1 - operand2
        case .multiply:
            return operand1 * operand2
        case .divide:
            return operand1 / operand2
        }
    }
    
}

