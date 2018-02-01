//
//  ViewController.swift
//  EggTime
//
//  Created by Leandro Meneguel on 6/21/17.
//  Copyright © 2017 Leandro Meneguel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    var timerStopped = true
    
    func decreaseTimer() {
        
        if time > 0 {
            
            time -= 1
        
            counterLabel.text = String(time)
        } else {
            counterLabel.text = String(0)
            timer.invalidate()
        }
        
    }
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func pauseBotton(_ sender: Any) {
        
        timer.invalidate()
        timerStopped = true
        
    }
    @IBAction func playButton(_ sender: Any) {
        
        if timerStopped{
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        timerStopped = false
        }
        
    }
    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        counterLabel.text = String(time)
        
    }
    @IBAction func minusTen(_ sender: Any) {
        
        if time > 10 {

            time -= 10
            counterLabel.text = String(time)
        }

    
    }
    @IBAction func reset(_ sender: Any) {
        
        timer.invalidate()
        time = 210
        counterLabel.text = String(210)
        timerStopped = true
        
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

