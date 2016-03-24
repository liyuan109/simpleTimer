//
//  ViewController.swift
//  timer
//
//  Created by Yuan Li on 10/4/15.
//  Copyright © 2015 Yuan Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timerCount = 0
    var timerRunning = false
    var timer = NSTimer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func Counting(){
        timerCount += 1
        timerLabel.text = "\(timerCount)"
    }
    
    @IBAction func startButton(sender: UIButton){
    
        if timerRunning == false {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("Counting"), userInfo: nil, repeats: true)
            timerRunning = true
        }
    
    }
    
    @IBAction func stopButton(sender: UIButton) {
        
        if timerRunning == true{
            timer.invalidate()
            timerRunning = false
        }
    }
    
    @IBAction func restartButton(sender: UIButton) {
        timerCount = 0
        timerLabel.text = "0"
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

