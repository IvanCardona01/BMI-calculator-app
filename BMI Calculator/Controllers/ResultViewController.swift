//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Carlos Rios on 30/06/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var adviceText: String?
    var color: UIColor?
    
    @IBOutlet weak var advice: UILabel!
    @IBOutlet var viewResult: UIView!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        advice.text = adviceText
        viewResult.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
