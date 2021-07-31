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
    
    var bmiValue: String = "0.0"
    var c_brain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format:"%0.2f",sender.value)+"m"
    }
    
    @IBAction func weightSilder(_ sender: UISlider) {
        weightLabel.text = String(format:"%0.2f",sender.value)+"kg"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightSlide.value
        let weight = weightSlide.value
        c_brain.calc_bmi(h: height, w: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToResult"){
            let DestinationVC = segue.destination as! ResultViewController
            DestinationVC.bmivalue = c_brain.get_bmi()
            DestinationVC.advice = c_brain.get_advice()
            DestinationVC.color = c_brain.get_color()
        }
    }
    
    
}

