//
//  ViewController.swift
//  calculatorbillku
//
//  Created by Anang Kurniawan on 13/11/24.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var splitValueLabel: UILabel!
    @IBOutlet weak var buttonTwentyPercent: UIButton!
    @IBOutlet weak var buttonTenPercent: UIButton!
    @IBOutlet weak var buttonZeroPercent: UIButton!
    @IBOutlet weak var billTotalTextField: UITextField!
    
    private var tip: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetPercentButtonSelected()
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "0%":
            setZeroPercentButtonSelected()
            tip = 0.0
        case "10%":
            setTenPercentButtonSelected()
            tip = 0.1
        case "20%":
            setTwentyPercentButtonSelected()
            tip = 0.2
        default:
            resetPercentButtonSelected()
            tip = 0.0
        }
        print(tip)
    }
    
    private func setZeroPercentButtonSelected() {
        buttonZeroPercent.backgroundColor = .black
        buttonTenPercent.backgroundColor = nil
        buttonTwentyPercent.backgroundColor = nil
    }
    
    private func setTenPercentButtonSelected() {
        buttonZeroPercent.backgroundColor = nil
        buttonTenPercent.backgroundColor = .black
        buttonTwentyPercent.backgroundColor = nil
    }
    
    private func setTwentyPercentButtonSelected() {
        buttonZeroPercent.backgroundColor = nil
        buttonTenPercent.backgroundColor = nil
        buttonTwentyPercent.backgroundColor = .black
    }
    
    private func resetPercentButtonSelected() {
        buttonZeroPercent.backgroundColor = nil
        buttonTenPercent.backgroundColor = nil
        buttonTwentyPercent.backgroundColor = nil
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

