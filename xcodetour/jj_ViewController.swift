//
//  jj_ViewController.swift
//  xcodetour
//
//  Created by Jarrad Prida on 5/10/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit

class jj_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var spring_count: UITextField!
  
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var picker_cycles: UIPickerView!
  
    
    @IBOutlet weak var spring_id: UITextField!
    @IBOutlet weak var cycle_life: UITextField!
  
    
    @IBOutlet weak var spring_length: UITextField!
    @IBOutlet weak var sprg_length_slider: UISlider!
    @IBOutlet weak var ippt_label: UILabel!
    @IBOutlet weak var turns_label: UILabel!
    @IBOutlet weak var weight_label: UILabel!
    @IBOutlet weak var cycles_label: UILabel!
  
  
    @IBOutlet weak var mis_match_spgs: UISwitch!
    @IBOutlet weak var wire_grade_label: UITextField!
   
    @IBOutlet weak var wire_grade_switch: UISwitch!
    // @IBOutlet weak var wire_grade_switch: UISwitch!
    @IBOutlet weak var torque_label: UILabel!
    
  
    
    
    var labeltext = String()
    var spring_qty = Double()
    var pickerdata: [String] = [String]()
    var pickerdata_cyc_life: [String] = [String]()
    var test = String()
    var test1 = String()
    var spr_id = String()
    var wire_size = String()
    var sprg_length = Double()
    var IPPT = Double()
    var weight = Double()
    var wire = Double()
    var mis_matched_spgs = String()
    var d = Double()
    var Wire_Constant = Double()
    var Wire_Length = Double()
    var inactive_coils = Int()
    var spring_inside_diameter = Double()
    var sprg_weight = Double()
    var g = Double()
    var c = Double()
    var e = Double()
    var turns = Double()
    var stress_calc = Double()
    var torque = Double()
    var avg_psi = Int()
    var stress_perc = Double()
    var calc_cycle_life = Double()
    var PSI_count = Int()
    var spring_id_count = Int()
    var wire_count = Int()
    var wire_grade = String()
    var currentValue = Int()
    
    var AVG_PSI_ASTM: [Int] = [228500,227500,226500,226026,225500,223500,223081,222758,222435,222242,222048,221661,221500,221143,220595,219990,219095,218500,217008,216024,214786,213540,212282,211605,211024,209306]
    
    var AVG_PSI_OHD: [Int] = [221261,218723,217363,215642,213813,212671,210505,208780,207210,206300,205413,203771,202944,202503,200510,198932,196722,195328,193333,192080,190567,189112,187727,187005,186398,184668]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        pickerdata = ["1.750\" (1-3/4\")", "2.000\" (2\")", "2.250\" (2-1/4\")", "2.625\" (2-5/8\")", "3.375\" (3-3/8\")", "3.750\" (3-3/4\")", "5.875\" (5-7/8\")", "6.000\" (6\")", "7.625\" (7-5/8\")"]
        pickerdata_cyc_life = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
        
        label.text = labeltext
        spring_count.text = "1"
        spring_qty = 1
        spring_length.text = "20 in."
        sprg_length = 20
        //wire_grade_label.text = "Class II"
        wire_grade = labeltext
        spring_inside_diameter = 1.75
        self.picker.dataSource = self
        self.picker.delegate = self
        self.picker_cycles.dataSource = self
        self.picker_cycles.delegate = self
           picker.transform = CGAffineTransform.init(scaleX: 1, y: 1)
        currentValue = 20
        wire_size = ".207"
        spr_id = "1.75"
        


    }
    
  
    @IBAction func qty_stepper(_ sender: UIStepper) {
        var currentValue = Int(sender.value)
           spring_count.text = "\(currentValue)"
          spring_qty = Double(currentValue)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == picker  {
            return pickerdata.count}
        else {
            return pickerdata_cyc_life.count}
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
            if  pickerView == picker {
                let pickerLabel = UILabel()
                //pickerLabel.textColor = UIColor.blue
                pickerLabel.text = pickerdata[row]
                pickerLabel.font = UIFont(name:"Helvetica",size: 24) // In this use your custom font
                pickerLabel.adjustsFontSizeToFitWidth = true
                pickerLabel.textAlignment = NSTextAlignment.center
                test = String(pickerdata[row])
                test1 = String(test.characters.prefix(5))
                spring_id.text = String(test1)
                spr_id = String(test1)

                return pickerLabel
        }
        else{
       
                let pickerLabel = UILabel()
                //pickerLabel.textColor = UIColor.blue
                pickerLabel.text = pickerdata_cyc_life[row]
                pickerLabel.font = UIFont(name:"Helvetica",size: 24) // In this use your custom font
                pickerLabel.adjustsFontSizeToFitWidth = true
                pickerLabel.textAlignment = NSTextAlignment.center
                cycle_life.text = String(pickerdata_cyc_life[row])
                wire_size = pickerdata_cyc_life[row]
                return pickerLabel
        
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if  pickerView == picker {
            // picker.isHidden = false
            // picker_cycles.isHidden = true
            print((pickerdata[row]))
            test = String(pickerdata[row])
            test1 = String(test.characters.prefix(5))
            spring_id.text = String(test1)
            spr_id = String(test1)
          
            return pickerdata[row]
        }
            
        else {
            //picker.isHidden = true
            //picker_cycles.isHidden = false
            print((pickerdata_cyc_life[row]))
            cycle_life.text = String(pickerdata_cyc_life[row])
            wire_size = pickerdata_cyc_life[row]
            return pickerdata_cyc_life[row]}
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if  pickerView == picker {
            // picker.isHidden = false
            // picker_cycles.isHidden = true
          
            
            test = String(pickerdata[row])
            test1 = String(test.characters.prefix(5))
            spring_id.text = String(test1)
            spr_id = String(test1)
    
            spring_inside_diameter = Double(spr_id)!
            spring_id_count = picker.selectedRow(inComponent: 0)
        
            
        }
        
        if  pickerView == picker_cycles {
            //picker.isHidden = true
            //picker_cycles.isHidden = false
            print((pickerdata_cyc_life[row]))
            cycle_life.text = String(pickerdata_cyc_life[row])
            wire_size = pickerdata_cyc_life[row]
            wire_count = picker_cycles.selectedRow(inComponent: 0) // gets current row in array
            //return pickerdata_cyc_life[row]
        
        }
    }
    
    
    
    @IBAction func sprg_slider(_ sender: UISlider) {
        currentValue = Int(sender.value)
        //currentValue
        spring_length.text = "\(currentValue) in."
        sprg_length = Double(currentValue)
    }

    @IBAction func sprg_slider_plus(_ sender: UIButton) {
        if currentValue < 120 {
            currentValue = currentValue + 1
            spring_length.text = "\(currentValue) in."
            sprg_length = Double(currentValue)
            sprg_length_slider.value = Float(currentValue)
        }
    }
    @IBAction func sprg_slider_neg(_ sender: UIButton) {
        if currentValue > 3  {
            currentValue = currentValue - 1
            spring_length.text = "\(currentValue) in."
            sprg_length = Double(currentValue)
            sprg_length_slider.value = Float(currentValue)
        }
    }

    
    @IBAction func calc(_ sender: Any) {
        wire = Double(wire_size)!
        d = pow(wire, 4)
        g = pow(wire, 2)
        
        Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire + spring_inside_diameter))
        IPPT = (3.14159 * 30 * 1000000 * d) / (32 * ((sprg_length / wire) - 3) * (wire + spring_inside_diameter))
        //Wire_Length = round(((((Wire_Constant / IPPT) + 6) * spring_qty) * wire) * 100) / 100 //6 inactive coils
        sprg_weight = (((0.283 * (sprg_length / wire)) * 3.14159) * ((wire + spring_inside_diameter) * 3.14159) * (g / 4))
        
        if wire_grade == "ohd_grade" {
            avg_psi = AVG_PSI_OHD[wire_count]
        }
        else{
            avg_psi = AVG_PSI_ASTM[wire_count]
        }
        stress_perc = 1.10
        c = pow(stress_perc, -4.0691)
        calc_cycle_life = 14846 * c
        stress_calc = stress_perc * Double(avg_psi)
        e = pow(wire, 3)
        torque = stress_calc / (32 / (3.14159 * e))
        turns = torque / IPPT
        
        ippt_label.text = String(round(IPPT * 100) / 100)
        turns_label.text = String(round(turns * 100) / 100)
        weight_label.text = String(round(sprg_weight * 100) / 100)
        cycles_label.text = "10,000"
        torque_label.text = String(torque)

    }

    @IBAction func next(_ sender: Any) {
        if sprg_weight == 0 {
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Parameters Missing"
            refreshAlert.message = ("Adjust parameters & Calculate a valid solution")
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        }
        else {
        
        self.performSegue(withIdentifier: "segue", sender: nil)
    }
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destview1: _k_ViewController = segue.destination as! _k_ViewController
        destview1.wire_size = String(wire)
        
        var destview2: _k_ViewController = segue.destination as! _k_ViewController
        destview2.spring_id = test1
        
        var destview3: _k_ViewController = segue.destination as! _k_ViewController
        destview3.IPPT = (round(IPPT * 100) / 100)
        
        var destview4: _k_ViewController = segue.destination as! _k_ViewController
        destview4.turns = (round(turns * 100) / 100)
        
        var destview5: _k_ViewController = segue.destination as! _k_ViewController
        destview5.torque = (torque)
        
        var destview6: _k_ViewController = segue.destination as! _k_ViewController
        destview6.spring_qty = spring_qty
        
        var destview7: _k_ViewController = segue.destination as! _k_ViewController
        destview7.sprg_weight = (round(sprg_weight * 100) / 100)
        
        var destview8: _k_ViewController = segue.destination as! _k_ViewController
        destview8.sprg_length = sprg_length
        
        var destview9: _k_ViewController = segue.destination as! _k_ViewController
        destview9.spring_id_count1 = spring_id_count
        
        var destview10: _k_ViewController = segue.destination as! _k_ViewController
        destview10.wire_count1 = wire_count
        
        var destview11: _k_ViewController = segue.destination as! _k_ViewController
        destview11.wire_grade1 = wire_grade
        
        var destview12: _k_ViewController = segue.destination as! _k_ViewController
        destview12.IPPT_1 = IPPT

    }
  
    
    @IBAction func wire_info(_ sender: UIButton) {
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Spring Wire Type"
        refreshAlert.message = "Not all torsion spring wire is the same. Springs sold by OHD Parts are all Class II wire as it has much higher tensile strength in the same wire size diameter."
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()

    }
    
    @IBAction func wire_grade_switch(_ sender: UISwitch) {
        if wire_grade_switch.isOn {
            wire_grade = "OHD"
            wire_grade_label.text = "OHD Grade"
        }
        else {
            wire_grade = "ASTM 229"
            wire_grade_label.text = "Class II"
    }

    }
    
    
}
