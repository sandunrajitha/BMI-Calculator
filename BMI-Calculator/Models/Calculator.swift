//
//  Calculator.swift
//  BMI-Calculator
//
//  Created by Sandun Liyanage on 11/18/20.
//
import UIKit

struct Calculator {
    let weight: Float
    let height: Float
    var colour: UIColor
    var advice: String?
    var bmi: Float
    var bmiLabel: String
    
    
    
    init(_ weight: Float, _ height: Float) {
        self.weight = weight
        self.height = height
        
        bmi = weight/pow(height, 2)
        print(bmi)
        
        if bmi.rounded()>30{
            advice = "Eat less & Exercise!"
            colour = .red
        }else if (bmi.rounded() >= 25) {
            advice = "Eat less snaks"
            colour = .blue
        } else if bmi.rounded() < 18.5 {
            advice = "Eat more snacks"
            colour = .orange
        } else {
            advice = "You are doing fine"
            colour = .green
        }
        
        bmiLabel = String(format: "%.1f", bmi)
    }
    
    
}
