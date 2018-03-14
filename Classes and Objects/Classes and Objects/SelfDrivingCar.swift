//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Leandro Meneguel on 3/12/18.
//  Copyright © 2018 Leandro Meneguel. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        
        super.drive()
        
        if let userSetDestination = destination {
            print("Driving towards " + userSetDestination)
        }
    }
    
}
