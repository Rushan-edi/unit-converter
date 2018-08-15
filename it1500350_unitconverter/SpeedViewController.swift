//
//  SpeedViewController.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var inputMetrePerSec: UITextField!
    @IBOutlet weak var inputFeetPerMin: UITextField!
    @IBOutlet weak var inputKmPerHr: UITextField!
    @IBOutlet weak var inputMilesPerHr: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func clear(){
        
        self.inputMetrePerSec.text = ""
        self.inputFeetPerMin.text = ""
        self.inputKmPerHr.text = ""
        self.inputMilesPerHr.text = ""
        
    }

    @IBAction func onClickMetrePerSec(_ sender: Any) {
        clear()
    }
    
    @IBAction func onClickFeetPerMin(_ sender: Any) {
        clear()
    }
    @IBAction func onClickKmPerHr(_ sender: Any) {
        clear()
    }
    @IBAction func onClickMilesPerHr(_ sender: Any) {
        clear()
    }
    @IBAction func metrePerSecConversion(_ sender: Any) {
        
        let inputMetrePerSecDouble = Double(inputMetrePerSec.text!)
        
        if inputMetrePerSecDouble != nil {
            
            let sc = SpeedConversion()
            sc.metrePerSecConversions(inputMetrePerSecDouble!)
            self.inputKmPerHr.text = String(sc.kmPerHour)
            self.inputMilesPerHr.text = String(sc.milesPerHr)
            self.inputFeetPerMin.text = String(sc.feetPerMin)
            
        }
    }
    @IBAction func feetPerMinConversion(_ sender: Any) {
        
        let inputFeetPerMinDouble = Double(inputFeetPerMin.text!)
        
        if inputFeetPerMinDouble != nil {
            
            let sc = SpeedConversion()
            sc.feetPerMinConversions(inputFeetPerMinDouble!)
            self.inputKmPerHr.text = String(sc.kmPerHour)
            self.inputMilesPerHr.text = String(sc.milesPerHr)
            self.inputMetrePerSec.text = String(sc.metrePerSec)
            
        }
        
    }
    @IBAction func kmPerHrConversion(_ sender: Any) {
        
        let inputKmPerHrDouble = Double(inputKmPerHr.text!)
        
        if inputKmPerHrDouble != nil {
            
            let sc = SpeedConversion()
            sc.kmPerHourConversions(inputKmPerHrDouble!)
            self.inputFeetPerMin.text = String(sc.feetPerMin)
            self.inputMilesPerHr.text = String(sc.milesPerHr)
            self.inputMetrePerSec.text = String(sc.metrePerSec)
            
        }
    }
    
    @IBAction func milesPerHrConversion(_ sender: Any) {
        
        let inputMilesPerHrDouble = Double(inputMilesPerHr.text!)
        
        if inputMilesPerHrDouble != nil {
            
            let sc = SpeedConversion()
            sc.milesPerHrConversions(inputMilesPerHrDouble!)
            self.inputFeetPerMin.text = String(sc.feetPerMin)
            self.inputKmPerHr.text = String(sc.kmPerHour)
            self.inputMetrePerSec.text = String(sc.metrePerSec)
            
        }
        
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
