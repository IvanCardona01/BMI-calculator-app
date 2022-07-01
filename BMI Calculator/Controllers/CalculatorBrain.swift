//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Carlos Rios on 30/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorBrain {
    
    var bmi: BMI?
    
    func calculateBMI(height: Float, weight: Float ) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
    }

    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Nothing advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
