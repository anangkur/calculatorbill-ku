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
    private var split: Int = 0
    private var totalAfterSplit: Float = 0.0
    
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
        split = Int(sender.value)
        splitValueLabel.text = String(split)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let totalBill: Float = Float(billTotalTextField.text ?? "0.0") {
            let totalAfterTip = totalBill + (totalBill * tip)
            if let split = Float(splitValueLabel.text ?? "0") {
                totalAfterSplit = totalAfterTip / split
                self.performSegue(withIdentifier: "goToResult", sender: self)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToResult":
            let segueDestinationVC = segue.destination as! ResultViewController
            segueDestinationVC.totalAfterSplit = self.totalAfterSplit
            segueDestinationVC.split = self.split
            segueDestinationVC.tip = self.tip
        default:
            print("do nothing..")
        }
    }
}

