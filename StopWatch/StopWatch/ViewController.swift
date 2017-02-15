//
//  ViewController.swift
//  StopWatch
//
//  Created by Rachit Garg 2 on 01/02/17.
//  Copyright © 2017 Rachit Garg 2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    let data: [String] = ["Clock","Stopwatch", "About"]
    let id: [String]  = ["A","B","C"]
    
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
   return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName : String = id[indexPath.row]
        
        
        
        let veiwController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(veiwController!, animated: true)
    }
    
}

