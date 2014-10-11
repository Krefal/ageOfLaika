//
//  ViewController.swift
//  ageOfLaika
//
//  Created by Jack Eigenwillig on 02.10.14.
//  Copyright (c) 2014 Surreality. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var humanYearTextField: UITextField!
    @IBOutlet weak var dogYearLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converHumanYearsButtonPressed(sender: UIButton) {
        dogYearLabel.hidden = false
        let ageFromTextField = humanYearTextField.text.toInt()!
        let ageConversion = 7
        dogYearLabel.text = "\(ageFromTextField * ageConversion)" + " In Human Years"
        humanYearTextField.text = ""
        humanYearTextField.resignFirstResponder()
        
    }
    
    @IBAction func convertRealHumanYearsButtonPressed(sender: UIButton) {
        dogYearLabel.hidden = false
        let ageFromTextField = humanYearTextField.text
        let doubleFromTextField = Double((ageFromTextField as NSString).doubleValue)
        
        var realDogyears:Double
        
        if doubleFromTextField > 2 {
            realDogyears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogyears = doubleFromTextField * 10.5
        }
        dogYearLabel.text = "\(realDogyears)" + " In Real Human Years"
        humanYearTextField.text = ""
        humanYearTextField.resignFirstResponder()
        
    }

    
}
