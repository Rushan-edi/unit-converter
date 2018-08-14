//
//  DistanceViewController.swift
//  it1500350_unitconverter
//
//  Created by rushan on 8/14/18.
//  Copyright © 2018 rushan. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var inputMetre: UITextField!
    @IBOutlet weak var inputFoot: UITextField!
    @IBOutlet weak var inputYard: UITextField!
    @IBOutlet weak var inputKm: UITextField!
    @IBOutlet weak var inputMile: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func clear(){
        
        self.inputMetre.text = ""
        self.inputFoot.text = ""
        self.inputYard.text = ""
        self.inputKm.text = ""
        self.inputMile.text = ""
        
    }
    @IBAction func onClickMetre(_ sender: Any) {
        
        clear()
        
    }
    @IBAction func onClickFoot(_ sender: Any) {
        
        clear()
        
    }
    @IBAction func onClickYard(_ sender: Any) {
        
        clear()
        
    }
    @IBAction func onClickKm(_ sender: Any) {
        
        clear()
    }
    @IBAction func onClickMile(_ sender: Any) {
        
        clear()
    }
    @IBAction func metreConversion(_ sender: Any) {
        
        let inputMetreDouble = Double(inputMetre.text!)
        
        if inputMetreDouble != nil {
            
            let dc = DistanceConversion()
            dc.metreConversions(inputMetreDouble!)
            self.inputFoot.text = String(dc.inputFoot)
            self.inputYard.text = String(dc.inputYard)
            self.inputKm.text = String(dc.inputKiloMetre)
            self.inputMile.text = String(dc.inputMile)
        }
        
    }
    @IBAction func footConversion(_ sender: Any) {
        
        let inputFootDouble = Double(inputFoot.text!)
        
        if inputFootDouble != nil {
            
            let dc = DistanceConversion()
            dc.footConversions(inputFootDouble!)
            self.inputMetre.text = String(dc.inputMetre)
            self.inputYard.text = String(dc.inputYard)
            self.inputKm.text = String(dc.inputKiloMetre)
            self.inputMile.text = String(dc.inputMile)
        }
        
    }
    @IBAction func yardConversion(_ sender: Any) {
        
        let inputYardDouble = Double(inputYard.text!)
        
        if inputYardDouble != nil {
            
            let dc = DistanceConversion()
            dc.yardConversions(inputYardDouble!)
            self.inputFoot.text = String(dc.inputFoot)
            self.inputMetre.text = String(dc.inputMetre)
            self.inputKm.text = String(dc.inputKiloMetre)
            self.inputMile.text = String(dc.inputMile)
        }
        
    }
    @IBAction func kmConversion(_ sender: Any) {
        
        let inputKmDouble = Double(inputKm.text!)
        
        if inputKmDouble != nil {
            
            let dc = DistanceConversion()
            dc.kiloMetreConversions(inputKmDouble!)
            self.inputFoot.text = String(dc.inputFoot)
            self.inputMetre.text = String(dc.inputMetre)
            self.inputYard.text = String(dc.inputYard)
            self.inputMile.text = String(dc.inputMile)
        }
        
    }
    @IBAction func mileConversion(_ sender: Any) {
        
        let inputMileDouble = Double(inputMile.text!)
        
        if inputMileDouble != nil {
            
            let dc = DistanceConversion()
            dc.mileConversions(inputMileDouble!)
            self.inputFoot.text = String(dc.inputFoot)
            self.inputMetre.text = String(dc.inputMetre)
            self.inputYard.text = String(dc.inputYard)
            self.inputKm.text = String(dc.inputKiloMetre)
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
