//
//  WeightConversion.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/13/18.
//  Copyright © 2018 rushan. All rights reserved.
// rushan

import Foundation
class WeightConversion{
    
    var inputGram:Double = 0.0
    var inputKilogram:Double = 0.0
    var inputPound:Double = 0.0
    var inputOunce:Double = 0.0
    
    func gramConversions(_ gramValue : Double){
        
        self.inputKilogram = (gramValue/1000)
        self.inputPound = (gramValue*0.0022046)
        self.inputOunce = (gramValue*0.035274)
    }
    func kiloGramConversions(_ kilogramValue : Double){
        
        self.inputGram = (kilogramValue*1000)
        self.inputPound = (kilogramValue*2.2046)
        self.inputOunce = (kilogramValue*35.274)
    }
    func poundConversions(_ poundValue : Double){
        
        self.inputGram = (poundValue/0.0022046)
        self.inputKilogram = (poundValue/2.2046)
        self.inputOunce = (poundValue*16)
    }
    func ounceConversions(_ ounceValue : Double){
        
        self.inputGram = (ounceValue/0.035274)
        self.inputKilogram = (ounceValue/35.274)
        self.inputPound = (ounceValue*0.062500)
    }
    
}
