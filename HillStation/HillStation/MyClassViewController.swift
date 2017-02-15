//
//  MyClassViewController.swift
//  HillStation
//
//  Created by Rachit Garg 2 on 14/02/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit

class MyClassViewController: UIViewController {
   
    @IBOutlet weak var myDescr: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    var string: String?
    var url :URL?
    var t: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myDescr.text = string
        
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: self.url!)
            DispatchQueue.main.async {
                self.myImage.image = UIImage(data: data!)
            }
        }
        
        
        self.title = t
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
