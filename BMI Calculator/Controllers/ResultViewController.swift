//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 笑 on 2023/9/22.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var dmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    var dmiValue = "0.0"
    var advice = ""
    var color = UIColor.clear
    override func viewDidLoad() {
        super.viewDidLoad()
        dmiLabel.text = dmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
