//
//  TemperatureViewController.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var inputCelsius: UITextField!
    @IBOutlet weak var inputFahren: UITextField!
    @IBOutlet weak var inputKelvin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()
    }
    func clear(){
        
        self.inputCelsius.text = ""
        self.inputFahren.text = ""
        self.inputKelvin.text = ""
    }
    @IBAction func onClickCelsius(_ sender: Any) {
        clear()
    }
    @IBAction func onClickFahren(_ sender: Any) {
        clear()
    }
    @IBAction func onClickKelvin(_ sender: Any) {
        clear()
    }
 // calling to celsiusConversion function in TemperatureConversion controller @param inputCelsius
    @IBAction func celsiusConversion(_ sender: Any) {
        
        let inputCelsiusDouble = Double(inputCelsius.text!)
        
        if inputCelsiusDouble != nil {
            
            let tc = TemperatureConversion()
            tc.celsiusConversions(inputCelsiusDouble!)
            self.inputKelvin.text = String(tc.inputKelvin)
            self.inputFahren.text = String(tc.inputFahrenheit)
        }
        
    }
    @IBAction func fahrenConversion(_ sender: Any) {
        
        let inputFahrenDouble = Double(inputFahren.text!)
        
        if inputFahrenDouble != nil {
            
            let tc = TemperatureConversion()
            tc.fahrenheitConversions(inputFahrenDouble!)
            self.inputKelvin.text = String(tc.inputKelvin)
            self.inputCelsius.text = String(tc.inputCelsius)
        }
    }
    @IBAction func kelvinConversion(_ sender: Any) {
        
        let inputKelvinDouble = Double(inputKelvin.text!)
        
        if inputKelvinDouble != nil {
            
            let tc = TemperatureConversion()
            tc.kelvinConversions(inputKelvinDouble!)
            self.inputFahren.text = String(tc.inputFahrenheit)
            self.inputCelsius.text = String(tc.inputCelsius)
        }
        
    }
}
