//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    let calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderHeightChanged(_ sender: UISlider) {
        let valueHeightText = String(format: "%.2f", sender.value)
        heightLabel.text = valueHeightText.appending(" mt")
    }
    
    @IBAction func sliderWeightChanged(_ sender: UISlider) {
        let valueWeightText = String(format: "%.0f", sender.value)
        weightLabel.text = valueWeightText.appending(" Kg")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = sliderHeight.value
        let weight = sliderWeight.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceText = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

