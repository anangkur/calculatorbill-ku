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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
}

