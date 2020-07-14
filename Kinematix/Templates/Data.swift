//
//  Data.swift
//  Kinematix
//
//  Created by Cathy Chang on 7/13/20.
//  Copyright © 2020 Kinematix. All rights reserved.
//

import Foundation
import CoreMotion
import SwiftUICharts
import SwiftUI

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

class Graph:ObservableObject{
    var ydata:[Double]
    var xdata:[Double]
    var view:LineView
    var title:String
    
    var dat = [0.0, 4.6, 7.9, 11.5]
    
    init(t:String, ydata:[Double], xdata:[Double]) {
        self.ydata = ydata
        self.xdata = xdata
        self.view = LineView(data: ydata, title: t)
        self.title = t
    }
    
    func update(){
        self.ydata.append(dat.randomElement() ?? 5.0)
        self.xdata.append(xdata.last ?? 0.0 + 0.025)
        self.view = LineView(data: ydata, title: self.title)
    }
}

class Bools:ObservableObject{
    var b:Bool = false
    
    func setBool(bool:Bool){
        self.b = bool
    }
}

class Doubles:ObservableObject{
    var d:Double = 0.0
    
    func setDouble(doub:Double){
        self.d = doub
    }
}
