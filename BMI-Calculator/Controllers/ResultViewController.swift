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
    
    var bmiValue: String?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
        adviceLabel.text = advice
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
