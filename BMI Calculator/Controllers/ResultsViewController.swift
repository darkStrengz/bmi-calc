//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Daniel Ghebrat on 09/11/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue : String?
    var adviceText : String?
    var color : UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backGroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceText
        backGroundImage.backgroundColor = color
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        
        self.dismiss(animated: true, completion: nil)
        
        
        
        
    }
    
    
//there used to be some segue related codes here

}
