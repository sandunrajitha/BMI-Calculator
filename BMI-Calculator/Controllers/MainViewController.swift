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
    
    var weight: Int = 0
    var height: Double = 0.0
    var bmiValue: Float = 0.0
    var advice: String = "Eat Some More Snacks"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightSlider.setValue(1.50, animated: false)
        weightSlider.setValue(100, animated: false)
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height = Double(sender.value)
        heightLabel.text = String(format: "%.2f", sender.value)+"m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight = Int(sender.value)
        weightLabel.text = String(weight)+"kg"
    }
    
    @IBAction func calculateClicked(_ sender: UIButton) {
        bmiValue = weightSlider.value/pow(heightSlider.value, 2)
        
        if bmiValue > 25 {
            advice = "Eat Less Snacks"
        }
        
        self.performSegue(withIdentifier: "showResult", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.2f", self.bmiValue)
            destinationVC.advice = self.advice
        }
    }
}

