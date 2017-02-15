//
//  StopwatchViewController.swift
//  StopWatch
//
//  Created by Rachit Garg 2 on 02/02/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit

class StopwatchViewController: UIViewController {

    @IBOutlet weak var start: UIButton!
    

    @IBOutlet weak var split: UIButton!
    var timer = Timer()
    var minutes : Int = 0
     var seconds : Int = 0
    var fraction : Int = 0
    var startstop  : Bool = true
    var myString : String = ""
    var myArray: [String] = []
    var    resetBool :Bool = true
    var i :Int = 0
    @IBOutlet weak var stopwatchlabel: UILabel!
    

    @IBOutlet weak var lapLabell: UILabel!
    
    @IBAction func start(_ sender: AnyObject) {
        if startstop == true {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: "updateStopwatch", userInfo: nil, repeats: true)
            
            startstop = false
            start.setTitle("Pause", for: UIControlState.normal)
            split.setTitle("split", for: UIControlState.normal)

              resetBool = true
           
        }
        else{
            timer.invalidate()
        
            split.setTitle("reset", for: UIControlState.normal)
            start.setTitle("start", for: UIControlState.normal)
           startstop = true
            resetBool = false
            
            
        }
        
    }
    
    
    @IBAction func splitReset(_ sender: AnyObject) {
        if resetBool == true{
             i += 1
            
            lapLabell.text = "Lap \(i) : \(stopwatchlabel.text!)"
            myArray.append(lapLabell.text! )
        }
        else{
             stopwatchlabel.text = "00:00:00"
            fraction = 0
            minutes = 0
            seconds = 0
            lapLabell.text = " "
            i = 0
            split.setTitle("split", for: UIControlState.normal)
            myArray.removeAll()
            
        }
    }


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopwatchlabel.text = "00:00:00"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateStopwatch()  {
        fraction += 1
        if fraction == 100 {
            seconds += 1
            fraction = 0
        }
        if seconds == 60 {
            minutes += 1
            seconds = 0
        }

        let fractionString:String = fraction>9 ? "\(fraction)" : "0\(fraction)"
           let secString = seconds>9 ? "\(seconds)" : "0\(seconds)"
        let minString = minutes>9 ? "\(minutes)" : "0\(minutes)"
        myString = "\(minString):\(secString):\(fractionString)"
        stopwatchlabel.text? = myString

        
    }

    
     /*func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "lapdetails") {
            //Checking identifier is crucial as there might be multiple
            // segues attached to same view
            let detailVC = segue!.destination as! MyTableTableViewController;
            detailVC.mySeguedArray = myArray
        }
    }*/

    @IBAction func viewSplits(_ sender: UIButton) {
    
        let controller=self.storyboard?.instantiateViewController(withIdentifier: "MyTableTableViewController") as! MyTableTableViewController
         controller.mySeguedArray = myArray
        self.navigationController?.pushViewController(controller, animated: true)

    
    
    }
    
}
