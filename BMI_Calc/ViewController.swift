//
//  ViewController.swift
//  BMI_Calc
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlide: UISlider!
    @IBOutlet weak var heightSlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "0m"
        weightLabel.text = "0kg"
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format:"%0.2f",sender.value)+"m"
    }
    
    @IBAction func weightSilder(_ sender: UISlider) {
        weightLabel.text = String(format:"%0.2f",sender.value)+"kg"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print( weightSlide.value / pow(heightSlide.value,2))
    }
    
}

