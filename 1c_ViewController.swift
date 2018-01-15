//
//  1c_ViewController.swift
//  xcodetour
//
//  Created by Jarrad Prida on 12/21/16.
//  Copyright © 2016 Jarrad Prida. All rights reserved.
//

import UIKit

class _c_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{


    @IBOutlet weak var test_label: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var Testlabel: UILabel!
    @IBOutlet weak var drum_label: UITextField!
    
    @IBOutlet weak var high_lift_slider: UISlider!
    @IBOutlet weak var high_lift_label: UITextField!
    @IBOutlet weak var NewLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var radius_12_outlet: UIButton!
    @IBOutlet weak var radius_15_outlet: UIButton!
    @IBOutlet weak var radius_LHR_outlet: UIButton!
    
    @IBOutlet weak var slider_label: UILabel!
    @IBOutlet weak var slider_outlet: UISlider!
    
    @IBOutlet weak var standard_lift: UIButton!
    @IBOutlet weak var vertical_lift: UIButton!
    @IBOutlet weak var high_lift: UIButton!
    
    var labeltext = String()
    var labeltext1 = String()
    var labeltext2 = String()
    var labeltext3 = String()
    var lift_type = String()

    var currentValue = Int()
    var currentValue1 = Int()
    var pickerdata: [String] = [String]()
    var track_radius = String()
    var drum = String()
    var pitch = String()
    var high_lift_amount = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        test_label.text = labeltext
        label1.text = labeltext1
        label2.text = labeltext2
        label3.text = labeltext3
        currentValue = 0
        currentValue1 = 0

    
            pickerdata = ["APCO 400-8", "APCO 400-12","APCO 5280-18","APCO 800-32"]
            radius_12_outlet.isEnabled = true
            drum_label.text = "APCO 400-8"
            radius_15_outlet.isEnabled = true
            radius_LHR_outlet.isEnabled = true
            radius_12_outlet.backgroundColor = UIColor.darkGray
            radius_15_outlet.backgroundColor = UIColor.lightGray
            radius_LHR_outlet.backgroundColor = UIColor.lightGray
            standard_lift.backgroundColor = UIColor.darkGray
            high_lift.backgroundColor = UIColor.lightGray
            vertical_lift.backgroundColor = UIColor.lightGray
            high_lift_slider.isEnabled = false
            
            track_radius = "14"
            Testlabel.text = track_radius
            high_lift_label.text = "0in."
            high_lift_amount = "0"
            lift_type = "standard_lift"
        
 
    
        
        
        self.picker.dataSource = self
        self.picker.delegate = self
        
        slider_label.text = "0:12"
        pitch = "0"

        

    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerdata.count
        }
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     
  
            NewLabel.text = String(pickerdata[row])
            drum_label.text = String(pickerdata[row])
             drum = pickerdata[row]
            
         self.high_lift_slider.value = 2
         self.high_lift_label.text = ""
            return pickerdata[row]
        }
    
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            NewLabel.text = String(pickerdata[row])
            drum_label.text = String(pickerdata[row])
            drum = pickerdata[row]
            
            self.high_lift_slider.value = 2
            self.high_lift_label.text = ""
            
    }

    @IBAction func std_lift(_ sender: Any) {
        pickerdata = ["APCO 400-8", "APCO 400-12","APCO 5280-18","APCO 800-32"]
        radius_12_outlet.isEnabled = true
        drum_label.text = "APCO 400-8"
        radius_15_outlet.isEnabled = true
        radius_LHR_outlet.isEnabled = true
        radius_12_outlet.backgroundColor = UIColor.darkGray
        radius_15_outlet.backgroundColor = UIColor.lightGray
        radius_LHR_outlet.backgroundColor = UIColor.lightGray
        standard_lift.backgroundColor = UIColor.darkGray
        high_lift.backgroundColor = UIColor.lightGray
        vertical_lift.backgroundColor = UIColor.lightGray
        high_lift_slider.isEnabled = false
        
        track_radius = "14"
        Testlabel.text = track_radius
        high_lift_label.text = "0in."
        high_lift_amount = "0"
        lift_type = "standard_lift"
       self.picker.reloadAllComponents()
    }
    
    @IBAction func hi_lift(_ sender: Any) {
        pickerdata = ["APCO 400-54","APCO 5250-54","APCO 5750-120","APCO 6375-164"]
        drum_label.text = "APCO 400-54"
        radius_12_outlet.backgroundColor = UIColor.lightGray
        radius_12_outlet.isEnabled = false
        radius_15_outlet.backgroundColor = UIColor.darkGray
        radius_LHR_outlet.backgroundColor = UIColor.lightGray
        standard_lift.backgroundColor = UIColor.lightGray
        high_lift.backgroundColor = UIColor.darkGray
        vertical_lift.backgroundColor = UIColor.lightGray
        radius_LHR_outlet.isEnabled = false
        high_lift_label.text = "6in. min"
        high_lift_slider.isEnabled = true
        track_radius = "17"
        Testlabel.text = track_radius
        high_lift_amount = "6"
        lift_type = "high_lift"
        self.picker.reloadAllComponents()
    }
  
    @IBAction func vert_lift(_ sender: Any) {
        pickerdata = ["APCO 850-11","APCO 1100-18","APCO 1350-28"]
        drum_label.text = "APCO 850-11"
        radius_12_outlet.isEnabled = false
        radius_15_outlet.isEnabled = false
        radius_LHR_outlet.isEnabled = false
        radius_12_outlet.backgroundColor = UIColor.lightGray
        radius_15_outlet.backgroundColor = UIColor.lightGray
        radius_LHR_outlet.backgroundColor = UIColor.lightGray
        standard_lift.backgroundColor = UIColor.lightGray
        high_lift.backgroundColor = UIColor.lightGray
        vertical_lift.backgroundColor = UIColor.darkGray
        track_radius = "0"
        Testlabel.text = track_radius
        high_lift_slider.isEnabled = false
        high_lift_label.text = "0in."
        high_lift_amount = "0"
        lift_type = "vertical_lift"
        self.picker.reloadAllComponents()
    }
    
    @IBAction func radius_12(_ sender: Any) {
        radius_12_outlet.backgroundColor = UIColor.darkGray
        radius_15_outlet.backgroundColor = UIColor.lightGray
        radius_LHR_outlet.backgroundColor = UIColor.lightGray
        track_radius = "14"
    }

    @IBAction func radius_15(_ sender: Any) {
        radius_12_outlet.backgroundColor = UIColor.lightGray
        radius_15_outlet.backgroundColor = UIColor.darkGray
        radius_LHR_outlet.backgroundColor = UIColor.lightGray
        track_radius = "17"
    }

    @IBAction func radius_LHR(_ sender: Any) {
        radius_12_outlet.backgroundColor = UIColor.lightGray
        radius_15_outlet.backgroundColor = UIColor.lightGray
        radius_LHR_outlet.backgroundColor = UIColor.darkGray
        track_radius = "9"
    }
    
    @IBAction func Next(_ sender: Any) {
        Testlabel.text = track_radius
        self.performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func slider(_ sender: UISlider) {
       currentValue = Int(sender.value)
        high_lift_label.text = "6in. min"
        high_lift_amount = "6"
   //      high_lift_slider = 2
        
        var angle_sin: [String] = ["0",".083",".164",".243",".316",".385",".447",".504",".555",".600",".640",".676",".707"]
        
        
        slider_label.text = "\(currentValue):12"
        pitch = angle_sin[currentValue]
    }
    
    @IBAction func pitch_plus(_ sender: UIButton) {
         if currentValue != 12 {
            if high_lift_label.text == "" {
                 high_lift_amount = "6"
                 high_lift_label.text = "6in. min"
            }
           
        currentValue = currentValue + 1
        var angle_sin: [String] = ["0",".083",".164",".243",".316",".385",".447",".504",".555",".600",".640",".676",".707"]
    
        slider_label.text = "\(currentValue):12"
        pitch = angle_sin[currentValue]
        slider_outlet.value = Float(currentValue)
        }
        
    }
    @IBAction func neg_pitch(_ sender: Any) {
        if currentValue != 0 {
            
            if high_lift_label.text == "" {
                high_lift_amount = "6"
                high_lift_label.text = "6in. min"
            }
            currentValue = currentValue - 1
        var angle_sin: [String] = ["0",".083",".164",".243",".316",".385",".447",".504",".555",".600",".640",".676",".707"]
        
        
        slider_label.text = "\(currentValue):12"
        pitch = angle_sin[currentValue]
            slider_outlet.value = Float(currentValue)
        }

    }
    
    @IBAction func high_lift(_ sender: UISlider) {
       currentValue1 = Int(sender.value)
        
        if drum == "APCO 400-54" || drum == "APCO 5250-54" {
        self.high_lift_slider.maximumValue = 54
        self.high_lift_slider.minimumValue = 6
        }
        if drum == "APCO 5750-120" {
            self.high_lift_slider.maximumValue = 120
            self.high_lift_slider.minimumValue = 6}
        
        if drum == "APCO 6375-164" {
            self.high_lift_slider.maximumValue = 164
            self.high_lift_slider.minimumValue = 6}
        
        
        
        high_lift_label.text = "\(currentValue1)in."
        high_lift_amount = "\(currentValue1)"
    
        }
    @IBAction func high_lift_plus(_ sender: UIButton) {
        var max = Int()
        if drum == "APCO 400-54" || drum == "APCO 5250-54" {
            self.high_lift_slider.maximumValue = 54
            self.high_lift_slider.minimumValue = 6
            max = 54
        }
        if drum == "APCO 5750-120" {
            self.high_lift_slider.maximumValue = 120
            self.high_lift_slider.minimumValue = 6
            max = 120
        }
        
        if drum == "APCO 6375-164" {
            self.high_lift_slider.maximumValue = 164
            self.high_lift_slider.minimumValue = 6
            max = 164
        }
        
         if currentValue1 < max {
            currentValue1 = currentValue1 + 1
            high_lift_label.text = "\(currentValue1)in."
            high_lift_amount = "\(currentValue1)"
            high_lift_slider.value = Float(currentValue1)
            
        }
    }
    
    @IBAction func high_lift_neg(_ sender: UIButton) {
        if currentValue1 > 6 {
            currentValue1 = currentValue1 - 1
            high_lift_label.text = "\(currentValue1)in."
            high_lift_amount = "\(currentValue1)"
            high_lift_slider.value = Float(currentValue1)
        }
    }
    
    @IBAction func pitch_info(_ sender: Any) {
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Roof Pitch"
        refreshAlert.message = "Roof pitch is expressed as Rise over Run. A Horizontal roof is 0:12 and 45° roof is 12:12"
        
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
    }
    @IBAction func drum_chart(_ sender: Any) {
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Drum Compatibility"
        refreshAlert.message = "APCO Drums shown only. Please see ohdparts.com for a complete Drum Compatibility Chart."
        
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destview1: _e_ViewController = segue.destination as! _e_ViewController
        destview1.labeltext1 = labeltext
        
        var destview2: _e_ViewController = segue.destination as! _e_ViewController
        destview2.labeltext2 = labeltext1
        
        var destview3: _e_ViewController = segue.destination as! _e_ViewController
        destview3.labeltext3 = lift_type
        
        var destview4: _e_ViewController = segue.destination as! _e_ViewController
        destview4.labeltext4 = high_lift_amount
        
        var destview5: _e_ViewController = segue.destination as! _e_ViewController
        destview5.labeltext5 = drum
        
        var destview6: _e_ViewController = segue.destination as! _e_ViewController
         destview6.labeltext6 = track_radius
        
        var destview7: _e_ViewController = segue.destination as! _e_ViewController
        destview7.labeltext7 = pitch
        
        //destview.labeltext8 = labeltext
        //destview.labeltext9 = labeltext
        //destview.labeltext10 = labeltext

    }


}

