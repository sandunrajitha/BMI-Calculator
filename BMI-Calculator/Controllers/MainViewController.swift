//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Sandun Rajitha on 16/11/2020.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var height: Float = 1.50
    var weight: Float = 100
    var bmiCalculator: Calculator?
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.setValue(height, animated: false)
        weightSlider.setValue(weight, animated: false)
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = String(format: "%.2f", sender.value)+"m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = String(format: "%.0f", sender.value)+"kg"
    }
    
    @IBAction func calculateClicked(_ sender: UIButton) {
        bmiCalculator = Calculator(self.weight, self.height)
        bmi = bmiCalculator?.calculateBMI()
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = self.bmi
        }
    }
}

