//
//  ResultViewController.swift
//  BMI_Calc
//
//  Created by Sai Reddy on 31/07/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    var bmivalue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmivalue
        suggestionLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func rebuttonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
