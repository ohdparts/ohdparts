//
//  1h_ViewController.swift
//  xcodetour
//
//  Created by Jarrad Prida on 4/6/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit

class _h_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var number_of_springs: UITextField!
    @IBOutlet weak var sprg_stepper: UIStepper!

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label17: UILabel!
    
    @IBOutlet weak var spring_id: UITextField!
    @IBOutlet weak var cycle_life: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var picker_cycles: UIPickerView!
    @IBOutlet weak var IPPT_label: UILabel!
    @IBOutlet weak var Turns_label: UILabel!
    @IBOutlet weak var Inner_Length_label: UILabel!
    @IBOutlet weak var Outer_Length_label: UILabel!
    @IBOutlet weak var Cycles_label: UILabel!
    @IBOutlet weak var Wire_size_label: UILabel!
    @IBOutlet weak var Wire_Size_Slider: UISlider!
    
    @IBOutlet weak var wire_stepper: UIStepper!
    @IBOutlet weak var Inner_wire_size: UILabel!
    @IBOutlet weak var Outer_wire_size: UILabel!

    @IBOutlet weak var calc: UIButton!
  
    



    
    var wire_type = String()
    var assy_type = String()
    var Lift_Type = String()
    var hi_lift = Double()
    var Drum = String()
    var Trk_Factor = Double()
    var angle_sin = Double()
    var height = Double()
    var weight = Double()
    var width = Double()
    var High_MA = Double()
    var Rev_of_Spiral = Double()
    var Flat_MA = Double()
    var Circ_of_Flat = Double()
    var drum_width = Double()
    var cable_len_rule = String()
    var sprg_count = Double()
    var pickerdata: [String] = [String]()
    var pickerdata_cyc_life: [String] = [String]()
    var spr_id_outer = String()
    var spr_id_inner = String()
    var cyc_life = String()
    var wire_size = String()
    var Open_Weight = Double()
    var Torq = Double()
    var Rem_Torq = Double()
    var Total_Torq = Double()
    var Rev_Open_Door = Double()
    var IPPT = Double()
    var Turns = Double()
    var max_wire_size = Double()
    var min_wire_size = Double()
    var sec_max_wire_size = Double()
    var sec_min_wire_size = Double()
    var p = Int()
    var i = Int()
    var ii = Int()
    var iii = Int()
    var j = Int()
    var g = Int()
    var k = Int()
    var h = Int()
    var x = Int()
    var y = Int()
    var z = Int()
    var a = Int()
    var l = Int()
    var n = Int()
    var jj = Double()
    var ss = Double()
    var bb = Int()
    var bbb = Int()
    var bbbb = Int()
    
    var wire_b = Double()
    var wire_c = Double()
    var Wire_Constant = Double()
    var Wire_Length = Double()
    var sprg_stretch = Double()
    var max_spring_length_formula = Double()
    var d = Double()
    var dd = Double()
    var c = Double()
    var cc = Double()
    var e = Double()
    var ee = Double()
    var cone_width = Double()
    var test = String()
    var test1 = String()
    var test2 = String()
    var PSI_Factor_1 = Double()
    var cycle_constant = Double()
    var cycle_turns = Double()
    var wire_size_3 = Double()
    var spr_stress = Double()
    var sec_spr_stress = Double()
    var stress_percent = Double()
    var second_stress_percent = Double()
    var calcd_cycle_life = Double()
    var sec_calcd_cycle_life = Double()
    var calcd_cycle_life_int = Double()
    var calcd_cycle_int = Int()
    var stress_percent_exponent = Double()
    var req_cyc_life = Double()
    var perc_factor = Double()
    var first_IPPT = Double()
    var second_IPPT = Double()
    var IPPT_percentage = Double()
    var first_cycle_turns = Double()
    var second_cycle_turns = Double()
    var sec_wire_size = Double()
    var second_wire_constant = Double()
    var second_wire_length = Double()
    var second_wire_coils = Double()
    var total_IPPT = Double()
    var first_spring_IPPT = Double()
    var second_spring_IPPT = Double()
    var outer_sprg_id = Double()
    var inner_sprg_id = Double()
    var one_cyl_life = Double()
    var two_cyl_life = Double()
    var cycles = Double()
    var cycle_life_rnd = Double()
    
    var wire_d: [String] = [".207",".2187",".2253",".234",".2437",".250",".26250",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
    
    var PSI_Factor: [Double] = [1.1,0.96,0.885,0.83,0.79,0.755,0.73,0.71,0.69,0.68]
    
    var AVG_PSI_ASTM: [Int] = [228500,227500,226500,226026,225500,223500,223081,222758,222435,222242,222048,221661,221500,221143,220595,219990,219095,218500,217008,216024,214786,213540,212282,211605,211024,209306]
    
    var AVG_PSI_OHD: [Int] = [221261,218723,217363,215642,213813,212671,210505,208780,207210,206300,205413,203771,202944,202503,200510,198932,196722,195328,193333,192080,190567,189112,187727,187005,186398,184668]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        label1.text = wire_type   // wire_type - OHD or ASTM 229
        label2.text = assy_type   // assy_type - single or duplex
        label3.text = Lift_Type   // Lift_Type - Stnd, Vert, Hi-lift
        label4.text = String(hi_lift)   // hi_lift amount
        label5.text = Drum   // Drum
        label6.text = String(Trk_Factor)   // Track Radius - 12 (14), 15(17), LHR(9)
        label7.text = String(angle_sin)   // angle_sin
        label8.text = String(height)   // height
        label9.text = String(weight)   // weight
        label10.text = String(width) // width
        label11.text = String(High_MA) // High_MA
        label12.text = String(Rev_of_Spiral) // Rev_of_Spiral
        label13.text = String(Flat_MA) // Flat_MA
        label14.text = String(Circ_of_Flat) // Circ_of_Flat
        label15.text = String(drum_width) // drum_width
        label16.text = cable_len_rule // cable_len_rule
        number_of_springs.text = "1"
        sprg_count   = 1
        cone_width = 4 //avg width all spring cones extend past wire x 2
        spring_id.text = "3.750 - 6.000"
        cycle_life.text = "10000"
        cyc_life = "10000"
        spr_id_inner = "3.750"
        spr_id_outer = "6.000"
        
        //Wire_size_label.text = "Wire Size"

        pickerdata = ["3.750 - 6.000", "5.875 - 7.625"]
        
        pickerdata_cyc_life = ["10000", "15000", "25000", "50000", "75000", "100000", "150000", "200000", "250000", "300000"]

        self.picker.dataSource = self
        self.picker.delegate = self
        self.picker_cycles.dataSource = self
        self.picker_cycles.delegate = self
        
        wire_stepper.isEnabled = false
   

    }

    @IBAction func next(_ sender: Any) {
        
        if wire_b == 0 {
            let refreshAlert = UIAlertView()
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
        let destview1: _i_ViewController = segue.destination as! _i_ViewController
        destview1.outer_spring_id = String(outer_sprg_id)
        
        let destview2: _i_ViewController = segue.destination as! _i_ViewController
        destview2.inner_spring_id = String(inner_sprg_id)
        
        let destview3: _i_ViewController = segue.destination as! _i_ViewController
        destview3.outer_spring_wire_size = String(wire_b)
        
        let destview4: _i_ViewController = segue.destination as! _i_ViewController
        destview4.inner_spring_wire_size = String(sec_wire_size)
        
        let destview5: _i_ViewController = segue.destination as! _i_ViewController
        destview5.outer_spring_length = String(Wire_Length)
        
        let destview6: _i_ViewController = segue.destination as! _i_ViewController
        destview6.inner_spring_length = String(second_wire_length)
        
        let destview7: _i_ViewController = segue.destination as! _i_ViewController
        destview7.spring_qty = String(sprg_count)
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sprg_stepper(_ sender: UIStepper) {
        let currentValue = Int(sender.value)
        number_of_springs.text = "\(currentValue)"
        sprg_count = Double(currentValue)
        
        
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
            return pickerLabel
        }
        else{
            
            let pickerLabel = UILabel()
            //pickerLabel.textColor = UIColor.blue
            pickerLabel.text = pickerdata_cyc_life[row]
            pickerLabel.font = UIFont(name:"Helvetica",size: 24) // In this use your custom font
            pickerLabel.adjustsFontSizeToFitWidth = true
            pickerLabel.textAlignment = NSTextAlignment.center
            return pickerLabel
            
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
  
        if  pickerView == picker {
            // picker.isHidden = false
            // picker_cycles.isHidden = true
            print((pickerdata[row]))
            test = String(pickerdata[row])
            test1 = String(test.prefix(5))
            test2 = String(test.suffix(5))
            spring_id.text = String(test)
            spr_id_inner = String(test1)
            return pickerdata[row]}
            
        else {
            //picker.isHidden = true
            //picker_cycles.isHidden = false
            print((pickerdata_cyc_life[row]))
            cycle_life.text = String(pickerdata_cyc_life[row])
            cyc_life = pickerdata_cyc_life[row]
            return pickerdata_cyc_life[row]}
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
        if  pickerView == picker {
            // picker.isHidden = false
            // picker_cycles.isHidden = true
            test = String(pickerdata[row])
            test1 = String(test.prefix(5))
            test2 = String(test.suffix(5))
            spring_id.text = String(test)
            
            //wire_d = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
            
            spr_id_inner = String(test1)
            spr_id_outer = String(test2)
             calc.isEnabled = true
        }
        
        if  pickerView == picker_cycles {
            //picker.isHidden = true
            //picker_cycles.isHidden = false
            print((pickerdata_cyc_life[row]))
            cycle_life.text = String(pickerdata_cyc_life[row])
            cyc_life = pickerdata_cyc_life[row]
            //return pickerdata_cyc_life[row]
             calc.isEnabled = true
        }
    }
    
    @IBAction func Calc(_ sender: Any) {
        j = 0
        g = 0
        i = 0
        x = 0
        y = 0
        h = 0
        z = 0
        l = 0
        n = 0
        
         wire_stepper.isEnabled = true
   
    //    wire_stepper.minimumValue = 0
    //    wire_stepper.maximumValue = 25
        
        
        // Open Weight calc for standard lift w & w/o pitch
        if Lift_Type == "standard_lift" {
            if angle_sin == 0 {
                Open_Weight = Double((Trk_Factor / height) * (weight))
                print(Open_Weight)
            }
            else {
                Trk_Factor = 17
                Open_Weight = (((Trk_Factor / height) + (((height - Trk_Factor)) * angle_sin) / height) * weight)
                print(String(Open_Weight))
            }
        } // end if statement
        
        // Open Weight calc for high-lift w & w/o pitch
        if Lift_Type == "high_lift" {
            if angle_sin == 0 {
                Open_Weight = Double(((hi_lift + 9) / height) * (weight))
                print(Open_Weight)
            }
            else {
                Trk_Factor = 9
                Open_Weight = ((((hi_lift + 9) / height) + (((height - hi_lift - 9) * angle_sin) / height)) * weight)
                print(Open_Weight)
            }
        }// end if statement
        
        // Long Form calc for Standad lift
        if Lift_Type == "standard_lift" {
            Torq = weight * High_MA
            Rem_Torq = Open_Weight * Flat_MA
            Total_Torq = Torq - Rem_Torq
            Rev_Open_Door = height/Circ_of_Flat
            IPPT = round(((Total_Torq/Rev_Open_Door) * 100) / 100) / sprg_count
            var IPPT_str = Double()
            IPPT_str = round((Total_Torq/Rev_Open_Door) * 100) / 100
            Turns = round((Torq/IPPT_str)*100) / 100
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        // Long Form calc for high lift
        if Lift_Type == "high_lift" {
            Torq = weight * High_MA
            Rem_Torq = Open_Weight * Flat_MA
            Total_Torq = Torq - Rem_Torq
            Rev_Open_Door = ((height-hi_lift)/Circ_of_Flat + Rev_of_Spiral)
            IPPT = round(((Total_Torq/Rev_Open_Door) * 100) / 100) / sprg_count
            var IPPT_str = Double()
            IPPT_str = round((Total_Torq/Rev_Open_Door) * 100) / 100
            Turns = round((Torq/IPPT_str)*100) / 100
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        
        // Long Form calc for vertical lift
        if Lift_Type == "vertical_lift" {
            Torq = weight * High_MA
            IPPT = round(((weight * 0.375) * 100) / 100) / sprg_count //rise per turn factor
            Turns = round((High_MA / 0.375) * 100) / 100 // rise per turn factor
            var IPPT_str = Double()
            IPPT_str = round(((weight * 0.375) * 100) / 100)
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        
        outer_sprg_id = Double(spr_id_outer)!
        inner_sprg_id = Double(spr_id_inner)!
        
        if outer_sprg_id == 5.875 || outer_sprg_id == 6.000 {
            min_wire_size = 0.2625
            max_wire_size = 0.4687
        }
        if outer_sprg_id == 7.625  {
            min_wire_size = 0.3065
            max_wire_size = 0.4900
        }
   
        if inner_sprg_id == 3.750  {
            sec_max_wire_size = 0.4218
            sec_min_wire_size = 0.2253
        }
   
        if inner_sprg_id == 3.375  {
            sec_max_wire_size = 0.3938
            sec_min_wire_size = 0.207
        }
        // set min and max wire parameters in loop

        if inner_sprg_id == 5.875  {
            sec_max_wire_size = 0.4687
              sec_min_wire_size = 0.2625
        }

    
        
        // loop through wire sizes to test options
        
        wirecalc: for i in wire_d {
            wire_b = Double(i)!
            j = j + 1 //creates cycle count to refrence PSI arrays
            g = j - 1
            d = pow(wire_b, 4)
            Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_b + outer_sprg_id))

            if wire_b  <= max_wire_size && wire_b >= min_wire_size {
                // removes wire sizes that aren't valid from outer sprg
    
            
            for l in 1...25 {   // set to 25 as 1st sprg should be 50-75% of total ippt
                
                
                perc_factor = Double(76 - l)/100
                
                if Lift_Type == "vertical_lift" {
                    first_IPPT = ((weight * 0.375) * perc_factor) / sprg_count
                }
                else{
                    first_IPPT = ((Total_Torq * perc_factor) / Rev_Open_Door) / sprg_count
                }
                
                first_cycle_turns = (Wire_Constant) / first_IPPT
                
                Wire_Length = round(((((Wire_Constant/first_IPPT) + 6)) * wire_b))
                
                if Wire_Length >= 16 { // set 16 as min duplex length
                
                for n in 1...8 {
                    x = x + 1
                    y = x - 1 // provides a count for n
                    p = (g - (n + 1)) // p is set to find a wire at least 2 sizes smaller than Spg1 but not more than 6
                    
                    if p >= 0 {  // prevents error by not allowing p to a neg
                    sec_wire_size = Double(wire_d[p])!
                    
                    if sec_wire_size  <= sec_max_wire_size && sec_wire_size >= sec_min_wire_size {
                        // removes wire sizes that aren't valid from inner sprg
                        
                    dd = pow(sec_wire_size, 4)
                    second_wire_constant = (94377000 * dd) / (32 * (sec_wire_size + inner_sprg_id)) // 94377000 = 3.14159 * 30 * 1000000
                    
                    second_wire_length = Wire_Length - 1 // second spg is 1" shorter than outer spg
                    second_wire_coils = round(second_wire_length / sec_wire_size) - 6
                    second_IPPT = second_wire_constant / second_wire_coils
                    total_IPPT = abs((IPPT - (first_IPPT + second_IPPT)) / IPPT)
                    
                    if total_IPPT <= 0.05 {
                        second_cycle_turns = (second_wire_constant) / second_IPPT
                     
                        if first_cycle_turns > Turns || second_cycle_turns > Turns {
                           
                            
                            
                            
                                if wire_type == "ohd_grade" {
                                jj = Double(AVG_PSI_OHD[g])
                                ss = Double(AVG_PSI_OHD[p])
                                    }
                                else {
                                jj = Double(AVG_PSI_ASTM[g])
                                ss = Double(AVG_PSI_ASTM[p])
                                    }
                        
                            cycles = Double(cyc_life)!
                            cycle_life_rnd = round(cycles / 1000)
                            
                            first_spring_IPPT = (3.14159 * 30 * 1000000 * d) / (32 * (wire_b + outer_sprg_id) * (Wire_Length / wire_b - 2.5)) // 2.5 dead coils
                            
                           
                            second_spring_IPPT = (3.14159 * 30 * 1000000 * dd) / (32 * (sec_wire_size + inner_sprg_id) * (second_wire_length / sec_wire_size - 2.5))
                            
                            IPPT_percentage = first_spring_IPPT / (first_spring_IPPT + second_spring_IPPT)
                            
                            
                            c = pow(wire_b, 3)
                            cc = pow(sec_wire_size, 3)
                            
                            
                            //M. Daus Cycle life formula - 1st spring
                            spr_stress = (((32 * (Torq * IPPT_percentage)) / (3.14159 * c)) / sprg_count)
                            stress_percent = spr_stress / jj
                            e = pow(stress_percent, -4.069)
                            calcd_cycle_life = round((14846 * e) / 1000)
                            one_cyl_life = (14846 * e)
                            
                            //M. Daus Cycle life formula - 2nd spring
                            sec_spr_stress = (((32 * (Torq * (1 - IPPT_percentage))) / (3.14159 * cc)) / sprg_count)
                            second_stress_percent = sec_spr_stress / ss
                            ee = pow(second_stress_percent, -4.069)
                            sec_calcd_cycle_life = round((14846 * ee) / 1000)
                            two_cyl_life = (14846 * ee)
                            label17.text = String(g)
                            
                            if one_cyl_life >= cycles && two_cyl_life >= cycles {
                                
                            if cycle_life_rnd <= calcd_cycle_life && cycle_life_rnd <= sec_calcd_cycle_life {
                                    Inner_wire_size.text = String(sec_wire_size)
                                    Outer_wire_size.text = String(wire_b)
                                    Inner_Length_label.text = String(second_wire_length)
                                    Outer_Length_label.text = String(Wire_Length)
                                if one_cyl_life < two_cyl_life {
                                    if calcd_cycle_life > 1000 {
                                        Cycles_label.text = String("\(round(calcd_cycle_life / 1000))" + "mil")
                                    }
                                    else {
                                        Cycles_label.text = String("\(Int(calcd_cycle_life ))" + "k")
                                    }
                                }
                                else {
                                    if calcd_cycle_life > 1000 {
                                        Cycles_label.text = String("\(round(sec_calcd_cycle_life / 1000))" + "mil")
                                    }
                                    else {
                                        Cycles_label.text = String("\(Int(sec_calcd_cycle_life))" + "k")
                                    }
                                }
                                }
                                
                 break wirecalc
                              }
                            }
                           }
                          }
                        }
                     }
                  }
               }
            }
        }
    }
    
    
    
    
  
    @IBAction func outer_wire(_ sender: UIStepper) {
        
        j = 0
        g = 0
        i = 0
        x = 0
        y = 0
        h = 0
        z = 0
        l = 0
        n = 0
        
        
        //    wire_stepper.minimumValue = 0
        //    wire_stepper.maximumValue = 25
        
        
        // Open Weight calc for standard lift w & w/o pitch
        if Lift_Type == "standard_lift" {
            if angle_sin == 0 {
                Open_Weight = Double((Trk_Factor / height) * (weight))
                print(Open_Weight)
            }
            else {
                Trk_Factor = 17
                Open_Weight = (((Trk_Factor / height) + (((height - Trk_Factor)) * angle_sin) / height) * weight)
                print(String(Open_Weight))
            }
        } // end if statement
        
        // Open Weight calc for high-lift w & w/o pitch
        if Lift_Type == "high_lift" {
            if angle_sin == 0 {
                Open_Weight = Double(((hi_lift + 9) / height) * (weight))
                print(Open_Weight)
            }
            else {
                Trk_Factor = 9
                Open_Weight = ((((hi_lift + 9) / height) + (((height - hi_lift - 9) * angle_sin) / height)) * weight)
                print(Open_Weight)
            }
        }// end if statement
        
        // Long Form calc for Standad lift
        if Lift_Type == "standard_lift" {
            Torq = weight * High_MA
            Rem_Torq = Open_Weight * Flat_MA
            Total_Torq = Torq - Rem_Torq
            Rev_Open_Door = height/Circ_of_Flat
            IPPT = round(((Total_Torq/Rev_Open_Door) * 100) / 100) / sprg_count
            var IPPT_str = Double()
            IPPT_str = round((Total_Torq/Rev_Open_Door) * 100) / 100
            Turns = round((Torq/IPPT_str)*100) / 100
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        // Long Form calc for high lift
        if Lift_Type == "high_lift" {
            Torq = weight * High_MA
            Rem_Torq = Open_Weight * Flat_MA
            Total_Torq = Torq - Rem_Torq
            Rev_Open_Door = ((height-hi_lift)/Circ_of_Flat + Rev_of_Spiral)
            IPPT = round(((Total_Torq/Rev_Open_Door) * 100) / 100) / sprg_count
            var IPPT_str = Double()
            IPPT_str = round((Total_Torq/Rev_Open_Door) * 100) / 100
            Turns = round((Torq/IPPT_str)*100) / 100
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        
        // Long Form calc for vertical lift
        if Lift_Type == "vertical_lift" {
            Torq = weight * High_MA
            IPPT = round(((weight * 0.375) * 100) / 100) / sprg_count //rise per turn factor
            Turns = round((High_MA / 0.375) * 100) / 100 // rise per turn factor
            var IPPT_str = Double()
            IPPT_str = round(((weight * 0.375) * 100) / 100)
            IPPT_label.text = String(IPPT_str)
            Turns_label.text = String(Turns)
        }
        
        outer_sprg_id = Double(spr_id_outer)!
        inner_sprg_id = Double(spr_id_inner)!
        
        if outer_sprg_id == 5.875 || outer_sprg_id == 6.000 {
            min_wire_size = 0.2625
            max_wire_size = 0.4687
        }
        if outer_sprg_id == 7.625  {
            min_wire_size = 0.3065
            max_wire_size = 0.4900
        }
        
        if inner_sprg_id == 3.750  {
            sec_max_wire_size = 0.4218
            sec_min_wire_size = 0.2253
        }
        
        if inner_sprg_id == 3.375  {
            sec_max_wire_size = 0.3938
            sec_min_wire_size = 0.207
        }
        // set min and max wire parameters in loop
        
        if inner_sprg_id == 5.875  {
            sec_max_wire_size = 0.4687
            sec_min_wire_size = 0.2625
        }
        
        
        
        // loop through wire sizes to test options
        
       // wirecalc: for i in wire_d {
        bb = Int(sender.value)
        bbb = Int(label17.text!)!
        bbbb = bbb + bb
        if bbbb > 25 {
            bbbb = 25
        }
        wire_b = Double(wire_d[bbbb])!
            j = bbbb //creates cycle count to refrence PSI arrays
            g = bbbb
            d = pow(wire_b, 4)
            Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_b + outer_sprg_id))
            
            if wire_b  <= max_wire_size && wire_b >= min_wire_size {
                // removes wire sizes that aren't valid from outer sprg
                
                
            wirecalc: for l in 1...25 {   // set to 25 as 1st sprg should be 50-75% of total ippt
                
                    
                    perc_factor = Double(76 - l)/100
                    
                    if Lift_Type == "vertical_lift" {
                        first_IPPT = ((weight * 0.375) * perc_factor) / sprg_count
                    }
                    else{
                        first_IPPT = ((Total_Torq * perc_factor) / Rev_Open_Door) / sprg_count
                    }
                    
                    first_cycle_turns = (Wire_Constant / first_IPPT)
                    
                    Wire_Length = round(((((Wire_Constant/first_IPPT) + 6)) * wire_b))
                    
                    if Wire_Length >= 16 { // set 16 as min duplex length
                        
                        for n in 1...8 {
                            x = x + 1
                            y = x - 1 // provides a count for n
                            p = (g - (n + 1)) // p is set to find a wire at least 2 sizes smaller than Spg1 but not more than 6
                            
                            if p >= 0 {  // prevents error by not allowing p to a neg
                                sec_wire_size = Double(wire_d[p])!
                                
                                if sec_wire_size  <= sec_max_wire_size && sec_wire_size >= sec_min_wire_size {
                                    // removes wire sizes that aren't valid from inner sprg
                                    
                                    dd = pow(sec_wire_size, 4)
                                    second_wire_constant = (94377000 * dd) / (32 * (sec_wire_size + inner_sprg_id)) // 94377000 = 3.14159 * 30 * 1000000
                                    
                                    second_wire_length = Wire_Length - 1 // second spg is 1" shorter than outer spg
                                    second_wire_coils = round(second_wire_length / sec_wire_size) - 6
                                    second_IPPT = second_wire_constant / second_wire_coils
                                    total_IPPT = abs((IPPT - (first_IPPT + second_IPPT)) / IPPT)
                                    
                                    if total_IPPT <= 0.05 {
                                        second_cycle_turns = (second_wire_constant / second_IPPT)
                                        
                                        if first_cycle_turns > Turns || second_cycle_turns > Turns {
                                            
                                            
                                            
                                            
                                            if wire_type == "ohd_grade" {
                                                jj = Double(AVG_PSI_OHD[g])
                                                ss = Double(AVG_PSI_OHD[p])
                                            }
                                            else {
                                                jj = Double(AVG_PSI_ASTM[g])
                                                ss = Double(AVG_PSI_ASTM[p])
                                            }
                                            
                                            cycles = Double(cyc_life)!
                                            cycle_life_rnd = round(cycles / 1000)
                                            
                                            first_spring_IPPT = (3.14159 * 30 * 1000000 * d) / (32 * (wire_b + outer_sprg_id) * (Wire_Length / wire_b - 2.5)) // 2.5 dead coils
                                            
                                            
                                            second_spring_IPPT = (3.14159 * 30 * 1000000 * dd) / (32 * (sec_wire_size + inner_sprg_id) * (second_wire_length / sec_wire_size - 2.5))
                                            
                                            IPPT_percentage = first_spring_IPPT / (first_spring_IPPT + second_spring_IPPT)
                                            
                                            
                                            c = pow(wire_b, 3)
                                            cc = pow(sec_wire_size, 3)
                                            
                                            
                                            //M. Daus Cycle life formula - 1st spring
                                            spr_stress = (((32 * (Torq * IPPT_percentage)) / (3.14159 * c)) / sprg_count)
                                            stress_percent = spr_stress / jj
                                            e = pow(stress_percent, -4.069)
                                            calcd_cycle_life = round((14846 * e) / 1000)
                                            one_cyl_life = (14846 * e)
                                            
                                            //M. Daus Cycle life formula - 2nd spring
                                            sec_spr_stress = (((32 * (Torq * (1 - IPPT_percentage))) / (3.14159 * cc)) / sprg_count)
                                            second_stress_percent = sec_spr_stress / ss
                                            ee = pow(second_stress_percent, -4.069)
                                            sec_calcd_cycle_life = round((14846 * ee) / 1000)
                                            two_cyl_life = (14846 * ee)
                                            //label17.text = String(g)
                                            
                                            if one_cyl_life >= cycles && two_cyl_life >= cycles {
                                                
                                                if cycle_life_rnd <= calcd_cycle_life && cycle_life_rnd <= sec_calcd_cycle_life {
                                                    Inner_wire_size.text = String(sec_wire_size)
                                                    Outer_wire_size.text = String(wire_b)
                                                    Inner_Length_label.text = String(second_wire_length)
                                                    Outer_Length_label.text = String(Wire_Length)
                                                    if one_cyl_life < two_cyl_life {
                                                        if calcd_cycle_life > 1000 {
                                                            Cycles_label.text = String("\(round(calcd_cycle_life / 1000))" + "mil")
                                                        }
                                                        else {
                                                            Cycles_label.text = String("\(Int(calcd_cycle_life ))" + "k")
                                                        }
                                                    }
                                                    else {
                                                        if calcd_cycle_life > 1000 {
                                                            Cycles_label.text = String("\(round(sec_calcd_cycle_life / 1000))" + "mil")
                                                        }
                                                        else {
                                                            Cycles_label.text = String("\(Int(sec_calcd_cycle_life))" + "k")
                                                        }
                                                    }
                                                }
                                                break wirecalc
                                    
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    
    

     
    }

