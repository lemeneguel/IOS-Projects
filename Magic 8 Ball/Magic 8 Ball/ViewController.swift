//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Leandro Meneguel on 1/28/18.
//  Copyright © 2018 Leandro Meneguel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber = 0

    
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateBall()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBall()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBall() {
        newBallImage()
    }
    
    func newBallImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }


}

