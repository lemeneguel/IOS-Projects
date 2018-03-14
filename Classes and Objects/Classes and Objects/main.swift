//
//  main.swift
//  Classes and Objects
//
//  Created by Leandro Meneguel on 3/2/18.
//  Copyright © 2018 Leandro Meneguel. All rights reserved.
//

import Foundation

let myCar = Car()

let mySelfDrivingCar = SelfDrivingCar()


let richsCar = Car(costumerChosenColour: "Gold")

print(myCar.colour, myCar.numberOfSeats, myCar.typeOfCar)
print(richsCar.colour, richsCar.numberOfSeats, richsCar.typeOfCar)

myCar.drive()

mySelfDrivingCar.drive()


