//
//  ViewController.swift
//  TipCalculator
//
//  Created by Rachit Garg 2 on 30/01/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calculateButton(_ sender: AnyObject) {
        let enteredAmount : Float64? = Float64(inputText.text! )
        resultLabel.text = "Tip is $ "+" \( enteredAmount!/5 )"
        total.text = "total is $"+" \( 1.2*enteredAmount!)"
    }
         override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

