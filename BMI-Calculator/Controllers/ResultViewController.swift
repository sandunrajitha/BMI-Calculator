//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Sandun Liyanage on 11/18/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = String(format: "%.2f", bmi?.value ?? 0.00)
        adviceLabel.text = bmi?.advice ?? "Calculate BMI Again"
        view.backgroundColor = bmi?.colour ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
