//
//  SecondViewController.swift
//  BMI-Calculator
//
//  Created by Sandun Liyanage on 11/17/20.
//
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: Float = 0.00
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = String(bmiValue)
        
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        
        view.addSubview(label)
        view.backgroundColor = .red
    }
}
