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
//    var colour: UIColor
//    var advice: String
//    var bmi: Float
//    var bmiLabel: String
    var bmi: BMI?
    
    
    init(_ weight: Float, _ height: Float) {
        self.weight = weight
        self.height = height
    }
    
    mutating func calculateBMI() -> BMI?{

        let bmiValue = weight/pow(height, 2)
        
        if bmiValue.rounded()>30{
            bmi = BMI(value: bmiValue, advice: "Eat less & Exercise!", colour: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }else if (bmiValue.rounded() >= 25) {
            bmi = BMI(value: bmiValue, advice: "Eat less snaks", colour: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else if bmiValue.rounded() < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", colour: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You are doing fine", colour: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        
        return bmi
    }
    
    
}
