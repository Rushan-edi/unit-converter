//
//  WeightsViewController.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/13/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import UIKit

class WeightsViewController: UIViewController {

    @IBOutlet weak var inputGram: UITextField!
    @IBOutlet weak var inputPound: UITextField!
    @IBOutlet weak var inputOunce: UITextField!
    @IBOutlet weak var inputKg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    // calling to gramconversion function in weightconversion controller @param inputGram
    @IBAction func gramConversion(_ sender: Any) {
        let inputGramDouble = Double(inputGram.text!)
        
        if inputGramDouble != nil {
            
            let wc = WeightConversion()
            wc.gramConversions( inputGramDouble!)
            self.inputPound.text = String(wc.inputPound)
            self.inputOunce.text = String(wc.inputOunce)
            self.inputKg.text = String(wc.inputKilogram)
            
        }
    }
    @IBAction func kgConversion(_ sender: Any) {
        
        let inputKgDouble = Double(inputKg.text!)
        
        if inputKgDouble != nil {
            
            let wc = WeightConversion()
            wc.kiloGramConversions(inputKgDouble!)
            self.inputPound.text = String(wc.inputPound)
            self.inputOunce.text = String(wc.inputOunce)
            self.inputGram.text = String(wc.inputGram)
            
        }
    }
    @IBAction func poundConversion(_ sender: Any) {
        
        let inputPoundDouble = Double(inputPound.text!)
        
        if inputPoundDouble != nil {
            
            let wc = WeightConversion()
            wc.poundConversions(inputPoundDouble!)
            self.inputKg.text = String(wc.inputKilogram)
            self.inputOunce.text = String(wc.inputOunce)
            self.inputGram.text = String(wc.inputGram)
            
        }
    }

    @IBAction func ounceConversion(_ sender: Any) {
        
        let inputOunceDouble = Double(inputOunce.text!)
        
        if inputOunceDouble != nil {
            
            let wc = WeightConversion()
            wc.ounceConversions(inputOunceDouble!)
            self.inputKg.text = String(wc.inputKilogram)
            self.inputPound.text = String(wc.inputPound)
            self.inputGram.text = String(wc.inputGram)
            
        }
    }
    
    
    func clear(){
        
        self.inputGram.text = ""
        self.inputOunce.text = ""
        self.inputKg.text = ""
        self.inputPound.text = ""
        
    }
    
    @IBAction func onClickGram(_ sender: Any) {
        clear()
    }
    @IBAction func onClickKg(_ sender: Any) {
        clear()
    }
    @IBAction func onClickPound(_ sender: Any) {
        clear()
    }
    @IBAction func onClickOunce(_ sender: Any) {
        clear()
    }
    
}
extension UIViewController {
    //this function will hidekeyboard when tapped anyware in ui
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
