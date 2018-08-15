//
//  SpeedConversion.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import Foundation
class SpeedConversion{
    
    var metrePerSec:Double = 0.0
    var kmPerHour:Double = 0.0
    var feetPerMin:Double = 0.0
    var milesPerHr:Double = 0.0
    
    func metrePerSecConversions(_ metrePerSecValue : Double){
        
        self.kmPerHour = (metrePerSecValue*18)/5
        self.feetPerMin = (metrePerSecValue*196.850394)
        self.milesPerHr = (metrePerSecValue*2.236936)
    }
    func kmPerHourConversions(_ kmPerHourValue : Double){
        
        self.metrePerSec = (kmPerHourValue*5)/18
        self.feetPerMin = (kmPerHourValue*54.6806649)
        self.milesPerHr = (kmPerHourValue*0.62137)
    }
    func feetPerMinConversions(_ feetPerMinValue : Double){
        
        self.metrePerSec = (feetPerMinValue*0.00508)
        self.kmPerHour = (feetPerMinValue*0.018288)
        self.milesPerHr = (feetPerMinValue*0.01136363637)
    }
    func milesPerHrConversions(_ milesPerHrValue : Double){
        
        self.metrePerSec = (milesPerHrValue*0.44704)
        self.kmPerHour = (milesPerHrValue*1.609344)
        self.feetPerMin = (milesPerHrValue*5280)/3600
    }
    
}
