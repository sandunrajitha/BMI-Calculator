//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Sandun Rajitha on 16/11/2020.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var weight: Int = 0
    var height: Double = 0.0
    
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
        let bmi = weightSlider.value/pow(heightSlider.value, 2)
        //print(bmi)
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = bmi
        
        self.present(secondVC, animated: true, completion: nil)
        
        
    }
}

