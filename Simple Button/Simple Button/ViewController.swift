//
//  ViewController.swift
//  Simple Button
//
//  Created by Leandro Meneguel on 2/2/18.
//  Copyright © 2018 Leandro Meneguel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelShow: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        labelShow.text = "Pressed"
        
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

