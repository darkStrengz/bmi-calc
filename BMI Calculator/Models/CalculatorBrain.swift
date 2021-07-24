//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Daniel Ghebrat on 09/11/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import  UIKit
struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(h : Float, w : Float) {
        
        let bmiValue = w / pow(h, 2)
            
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "eat more", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            
        }else if  (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "you're fit", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
                              
        }else if bmiValue >= 24.9 {
            bmi = BMI(value: bmiValue, advice: "eat less", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
            
        }else {
            bmi = BMI(value: bmiValue, advice: "error entry of bmi", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }
       
    }
    
    func getBMIValue() -> String{
      
        let bmiTo1DecPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecPlace
  
       
    }
    func getAdvice () -> String {
        return bmi?.advice ?? "error getting advice"
    }
    func getColor () -> UIColor {
        return bmi?.color ?? .systemPink
    }
    
//    let bmi = weight / pow(height, 2)
//    bmiValue = String(format: "%.2f", bmi)
//    self.performSegue(withIdentifier: "goToResults", sender: self)
}

