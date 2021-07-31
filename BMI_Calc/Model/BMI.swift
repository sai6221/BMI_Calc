//
//  BMI.swift
//  BMI_Calc
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

struct BMI {
    let bmi: Float?
    let advice: String?
    let color: UIColor?
    init(bmi: Float?, advice:String? , color: UIColor?) {
        self.bmi = bmi
        self.advice = advice
        self.color = color
    }
}
