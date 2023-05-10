//
//  ViewController.swift
//  Neobis_iOS_Calculating
//
//  Created by Айдар Шарипов on 6/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()
    var answer: Double = 0
    var calculator = CalculatorModel(operand1: 0, operand2: 0, currentOperation: .add)
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculate()
        addToView()
        constraints()
    }
    
    func calculate() {
        mainView.operationPressed = {(operand1, currentOperation) in
            switch currentOperation{
            case 11:
                if self.answer == 0 {
                    self.answer = Double(operand1)
                    self.calculator.currentOperation = .add
                }
            default:
                break
            }
        }
    }
    
    func addToView() {
        view.addSubview(mainView)
        
    }

    func constraints() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        ])
        
    }
}
