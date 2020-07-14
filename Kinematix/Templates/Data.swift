//
//  Data.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import Foundation
import CoreMotion

class Data{
    var motionManager: CMMotionManager = CMMotionManager()
    
    func start(){
        motionManager.accelerometerUpdateInterval = 0.1
        motionManager.startAccelerometerUpdates()
    }
    
    func stop(){
        motionManager.stopAccelerometerUpdates()
    }
}
