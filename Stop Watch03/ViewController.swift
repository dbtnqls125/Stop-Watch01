//
//  ViewController.swift
//  Stop Watch03
//
//  Created by D7702_09 on 2019. 4. 2..
//  Copyright © 2019년 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var counter = 0
    var myTimer = Timer()
    var timer_running = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(counter)
    }

    @IBAction func timeStart(_ sender: Any) {
        if !timer_running {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            timer_running = true
        }
    }
    
    @IBAction func timePause(_ sender: Any) {
        myTimer.invalidate()
        counter = 0
        timeLabel.text = String(counter)
    }
    @IBAction func timeStop(_ sender: Any) {
        myTimer.invalidate()
    }
    
    @objc func updateTime() {
        counter+=1
        timeLabel.text = String(counter)
    }
}

