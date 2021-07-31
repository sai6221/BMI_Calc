//
//  CalculatorBrain.swift
//  BMI_Calc
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    func get_bmi()->String{
        return String(format:"%0.1f",bmi?.bmi ?? "0.0")
    }
    mutating func calc_bmi(h: Float, w: Float){
        let bmi = w/pow(h, 2)
        if(bmi<18.5){
            self.bmi = BMI(bmi: bmi, advice: "Eat Less Pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }
        else if(bmi<24.5){
            self.bmi = BMI(bmi: bmi, advice: "Fit as Arnold!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            self.bmi = BMI(bmi: bmi, advice: "Eat More Cakes!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    func get_advice()->String{
        return bmi?.advice ?? "Nothing to judge!"
    }
    func get_color()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
