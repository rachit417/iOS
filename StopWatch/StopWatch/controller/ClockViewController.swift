//
//  ClockViewController.swift
//  StopWatch
//
//  Created by Rachit Garg 2 on 02/02/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {

    @IBOutlet weak var clock: UILabel!
    
    @IBOutlet weak var s: UILabel!
 
    var myseconds: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          let date = Date()
        var timer = Timer()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: "updateStopwatch" , userInfo: nil, repeats: true)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        clock.text = "\(formatter.string(from: date))"


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateStopwatch() {
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
      
        myseconds = seconds + 1
        if myseconds <= 60 {
                    s.text = "\(myseconds)"
        }
   
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
