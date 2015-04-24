//
//  ViewController.swift
//  TipCalculator
//
//  Created by S Venu Madhav Chitta on 4/22/15.
//  Copyright (c) 2015 S Venu Madhav Chitta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipRateSegmentedControl: UISegmentedControl!
    @IBOutlet weak var calculateTapped: UIButton!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBAction func calcTip(sender: AnyObject) {
        //1. Get the total bill
        //2. Determine the tip rate
        //3. Calculate the Tip
        //4. Display the Tip
        var userInput = billTextField.text as NSString
        var totalBill = userInput.floatValue
        var index: Int = tipRateSegmentedControl.selectedSegmentIndex
        var tipRate: Float = 0.15
        if index == 0 {
            tipRate = 0.15
        } else if index == 1 {
            tipRate = 0.20
        } else {
            tipRate = 0.25
        }
        var tip: Float = totalBill * tipRate
        tipLabel.text = "$\(tip)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

