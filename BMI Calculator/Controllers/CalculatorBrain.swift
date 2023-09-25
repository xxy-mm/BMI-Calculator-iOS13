//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 笑 on 2023/9/22.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi = BMI(bmiValue: 0.0)
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
            case  ..<18.5:
                bmi = BMI(bmiValue: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
            case ..<24.9:
                bmi = BMI(bmiValue: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
                
            default:
                bmi = BMI(bmiValue: bmiValue, advice: "Eat less pies!", color: .red)
                
        }
        
    }
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi.bmiValue)
    }
    
    func getAdvice() -> String {
        return bmi.advice
    }
    func getColor() -> UIColor {
        return bmi.color
    }
}
