//
//  ViewController.swift
//  tip
//
//  Created by Nikhil Bhutani on 12/13/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip amount and total
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total label
        tipLabel.text = String(format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
    }
}

