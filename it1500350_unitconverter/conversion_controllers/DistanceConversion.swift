//
//  DistanceConversion.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import Foundation
class DistanceConversion{
    
    var inputMetre:Double = 0.0
    var inputKiloMetre:Double = 0.0
    var inputFoot:Double = 0.0
    var inputYard:Double = 0.0
    var inputMile:Double = 0.0
    
    func metreConversions(_ metreValue : Double){
        
        self.inputKiloMetre = (metreValue/1000)
        self.inputFoot = (metreValue*3.2808)
        self.inputYard = (metreValue*1.0936)
        self.inputMile = (metreValue*0.00062137)
    }
    func kiloMetreConversions(_ kilometreValue : Double){
        
        self.inputMetre = (kilometreValue*1000)
        self.inputFoot = (kilometreValue*3280.8)
        self.inputYard = (kilometreValue*1093.6)
        self.inputMile = (kilometreValue*0.62137)
    }
    func footConversions(_ footValue : Double){
        
        self.inputKiloMetre = (footValue/3280.8)
        self.inputMetre = (footValue/3.2808)
        self.inputYard = (footValue*0.33333)
        self.inputMile = (footValue*0.00018939)
    }
    func yardConversions(_ yardValue : Double){
        
        self.inputKiloMetre = (yardValue/1093.6)
        self.inputFoot = (yardValue*3)
        self.inputMetre = (yardValue/1.0936)
        self.inputMile = (yardValue*0.00056818)
        
    }
    func mileConversions(_ mileValue : Double){
        
        self.inputKiloMetre = (mileValue/0.62137)
        self.inputFoot = (mileValue*5280)
        self.inputYard = (mileValue*1760)
        self.inputMetre = (mileValue/0.00062137)
    }
    
}
