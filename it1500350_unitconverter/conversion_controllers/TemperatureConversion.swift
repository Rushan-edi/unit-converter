//
//  TemperatureConversion.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import Foundation

class TemperatureConversion{
    
    var inputCelsius:Double = 0.0
    var inputFahrenheit:Double = 0.0
    var inputKelvin:Double = 0.0

    
    func celsiusConversions(_ celsiusValue : Double){
        
        self.inputFahrenheit = ((celsiusValue*1.8)+32)
        self.inputKelvin = ((celsiusValue)+235.15)
    }
    func fahrenheitConversions(_ fahrenheitValue : Double){
        
        self.inputCelsius = ((fahrenheitValue-32)/1.8)
        self.inputKelvin = (((fahrenheitValue-32)/1.8)+273.15)
    }
    func kelvinConversions(_ poundValue : Double){
        
        self.inputCelsius = (((poundValue-273.15)*1.8)+32)
        self.inputFahrenheit = ((poundValue)-273.15)
    }
}

