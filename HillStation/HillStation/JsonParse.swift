//
//  JsonParse.swift
//  HillStation
//
//  Created by Rachit Garg 2 on 13/02/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit
import Foundation

class JsonParse: UIViewController {

    
    var stationName : String?
    var desc: String?
    var imageSrc : URL?
    
    static func profileAll()-> [[String:Any]]{
 
        let file = Bundle.main.path(forResource: "hillStation", ofType: "json")
        let data = try? Data(contentsOf: URL(fileURLWithPath: file!))
         let jsonData = try? JSONSerialization.jsonObject(with: data!, options: []) as! NSDictionary
        let hillstation : [[String:Any]] = (jsonData![ "HillStationName"] as? [[String:Any]])!
        
            return hillstation
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
