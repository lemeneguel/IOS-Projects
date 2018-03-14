//
//  Car.swift
//  Classes and Objects
//
//  Created by Leandro Meneguel on 3/2/18.
//  Copyright © 2018 Leandro Meneguel. All rights reserved.
//

import Foundation

enum CarType {
    
    case Coupe
    case Sedan
    case Hatchback
    
}

class Car {
    
    //Properties
    var colour :String = "black"
    var numberOfSeats = 5
    
    //Enumerations or Enums
    var typeOfCar : CarType = .Sedan
    
    init() {
        
    }
    
    convenience init (costumerChosenColour : String) {
        
        self.init()
        colour = costumerChosenColour
        
    }
    
    //Functions
    func drive() {
        
        print("Car is moving")
        
    }
    
}
