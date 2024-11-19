//
//  ResultViewController.swift
//  calculatorbillku
//
//  Created by Anang Kurniawan on 13/11/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var settingLabel: UILabel!
    @IBOutlet weak var totalValueLabel: UILabel!
    
    var totalAfterSplit: Float? = nil
    var split: Int? = nil
    var tip: Float? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tipInPercent = (tip ?? 0.0) * 100
        totalValueLabel.text = "\(totalAfterSplit ?? 00)"
        settingLabel.text = "Split between \(split ?? 0) people, with \(tipInPercent)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
