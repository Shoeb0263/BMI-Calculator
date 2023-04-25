//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shoeb's Macbook on 16/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More", color: UIColor.blue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are Fit", color: UIColor.green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less", color: UIColor.red)
        }
        
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.green
    }
    
    func getBMIValue()->String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
    }
}
