//
//  ViewController.swift
//  Stop Watch
//
//  Created by Talha Qamar on 12/8/14.
//  Copyright (c) 2014 Talha Qamar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet var outpur: UILabel!
     var timer = NSTimer()
    var counter = 1;
    @IBAction func pause(sender: AnyObject) {
    
     timer.invalidate()
    }
    @IBAction func reset(sender: AnyObject) {
        
        counter = 1 ;
        outpur.text = "0"
    }
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
   func result()
    {
    println(String(counter))
    
    outpur.text = String(counter)
    counter++
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

