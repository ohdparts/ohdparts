

import UIKit

class _g_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

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
    @IBOutlet weak var number_of_springs: UITextField!
    @IBOutlet weak var spring_count_stepper: UIStepper!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var spring_id: UITextField!
    @IBOutlet weak var cycle_life: UITextField!
    @IBOutlet weak var picker_cycles: UIPickerView!
    @IBOutlet weak var IPPT_label: UILabel!
    @IBOutlet weak var Turns_label: UILabel!
    @IBOutlet weak var Length_label: UILabel!
    @IBOutlet weak var Cycles_label: UILabel!
    @IBOutlet weak var Wire_size_label: UILabel!
    @IBOutlet weak var Wire_Size_Slider: UISlider!
    @IBOutlet weak var wire_stepper: UIStepper!
    
    
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
    var spr_id = String()
    var cyc_life = String()
    var wire_size = String()
    var Open_Weight = Double()
    var Torq = Double()
    var Rem_Torq = Double()
    var Total_Torq = Double()
    var Rev_Open_Door = Double()
    var IPPT = Double()
    var Turns = Double()
    var i = Int()
    var j = Int()
    var g = Int()
    var k = Int()
    var h = Int()
    var x = Int()
    var y = Int()
    var z = Int()
    var a = Int()
    var b = Int()
    
    var wire_b = Double()
    var wire_c = Double()
    var Wire_Constant = Double()
    var Wire_Length = Double()
    var sprg_stretch = Double()
    var max_spring_length_formula = Double()
    var d = Double()
    var cone_width = Double()
    var test = String()
    var test1 = String()
    var PSI_Factor_1 = Double()
    var cycle_constant = Double()
    var cycle_turns = Double()
    var wire_size_3 = Double()
    var spr_stress = Double()
    var stress_percent = Double()
    var calcd_cycle_life = Double()
    var calcd_cycle_life_int = Double()
    var calcd_cycle_int = Int()
    var stress_percent_exponent = Double()
    var req_cyc_life = Double()
 
    

    var wire_d: [String] = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
    
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
        spring_id.text = ""
        cycle_life.text = ""
        Wire_size_label.text = "Wire Size"
        cone_width = 4 //avg width all spring cones extend past wire x 2
       
        //wire_d = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125"]
   
        
        pickerdata = ["1.750\" (1-3/4\")", "2.000\" (2\")", "2.250\" (2-1/4\")", "2.625\" (2-5/8\")", "3.375\" (3-3/8\")", "3.750\" (3-3/4\")", "5.875\" (5-7/8\")", "6.000\" (6\")", "7.625\" (7-5/8\")"]
        pickerdata_cyc_life = ["10000", "15000", "25000", "50000", "75000", "100000", "150000", "200000", "250000", "300000"]
    
        
        
        
        self.picker.dataSource = self
        self.picker.delegate = self
        self.picker_cycles.dataSource = self
        self.picker_cycles.delegate = self
        
        wire_stepper.isEnabled = false
        Wire_Size_Slider.isContinuous = true

        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func sprg_stepper(_ sender: UIStepper) {
        var currentValue = Int(sender.value)
        number_of_springs.text = "\(currentValue)"
        sprg_count = Double(currentValue)
        wire_stepper.value = 0
    }
    
    
    @IBAction func wire_label_slide(_ sender: UISlider) {
        Wire_Size_Slider.isContinuous = true
        b = Int(sender.value)
        wire_c = Double(wire_d[b])!
        Wire_size_label.text = String(wire_c)
        Wire_Size_Slider.value = Float(b)
    }
    
    
    @IBAction func wire_size_slider(_ sender: UISlider) {
    
        if Wire_size_label.text != "Wire Size" {
            b = Int(sender.value)

                wire_c = Double(wire_d[b])!
                
                z = 0
                x = 0
                
            
                d = pow(wire_c, 4)
                Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_c + Double(spr_id)!))
                Wire_Length = round(((((Wire_Constant / IPPT) + 6) * sprg_count) * wire_c) * 100) / 100 //6 inactive coils
                max_spring_length_formula = width - ((Wire_Length + cone_width + sprg_stretch) * sprg_count) + (drum_width * 2)
            
            if Wire_Length < 19 || max_spring_length_formula < 1 {
                    var refreshAlert = UIAlertView()
                    refreshAlert.title = "Solution Failed"
                    refreshAlert.message = "Spring solution using the next larger wire size exceeds available torsion assembly length"
                    refreshAlert.addButton(withTitle: "OK")
                    refreshAlert.show()
                    
                }
              //  else {
            if wire_type == "ohd_grade" {
                h = AVG_PSI_OHD[b]
            }
            else{
                h = AVG_PSI_ASTM[b]
            }
                    
                    wire_calc_stepper: for k in PSI_Factor {
                        x = x + 1 //creates cycle count to refrence PSI Factor arrays
                        y = x - 1
                        PSI_Factor_1 = Double(k)
                        wire_size_3 = pow(wire_c, 3)
                        cycle_constant = ((Double(h) * k) * wire_size_3) / 10.2
                        print(h)
                        print(k)
                        
                        cycle_turns = (cycle_constant * sprg_count) / IPPT
                        if cycle_turns < Turns {
                            continue
                        }
                        else {
                            //M.Daus Cycle formula
                            spr_stress = ((32 * Torq) / (3.14159 * wire_size_3)) / sprg_count
                            stress_percent = spr_stress / Double(h)
                            stress_percent_exponent = pow(stress_percent, -4.069)
                            calcd_cycle_life = round((14846 * stress_percent_exponent) / 1000) * 1000
                            
                            
                            req_cyc_life = Double(cyc_life)!
                            if req_cyc_life < calcd_cycle_life {
                                Length_label.text = String(Wire_Length)
                                Length_label.textColor = UIColor.white
                                Wire_size_label.text = String(wire_c)
                                Wire_Size_Slider.value = Float(b)
                                if calcd_cycle_life > 1000000 {
                                    Cycles_label.text = String("\(Double(calcd_cycle_life / 1000000))" + "mil")
                                    Cycles_label.textColor = UIColor.white
                                }
                                else {
                                    Cycles_label.text = String("\(Int(calcd_cycle_life / 1000))" + "k")
                                    Cycles_label.textColor = UIColor.white
                                }
                                
                                z = 1
                                break wire_calc_stepper
                                
                            }
                        }
                    }
                    if z == 0 {
                        var refreshAlert = UIAlertView()
                        refreshAlert.title = "Solution Failed"
                        refreshAlert.message = "Spring solution exceeds available torsion assembly length and/or wire size or does not meet required cycle life. Changing the number of springs or reducing the required cycle life may allow a spring solution to be computed"
                        refreshAlert.addButton(withTitle: "OK")
                        refreshAlert.show()
                        
                        d = pow(wire_c, 4)
                        Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_c + Double(spr_id)!))
                        Wire_Length = round(((((Wire_Constant / IPPT) + 6) * sprg_count) * wire_c) * 100) / 100 //6 inactive coils
                        //M.Daus Cycle formula
                        spr_stress = ((32 * Torq) / (3.14159 * wire_size_3)) / sprg_count
                        stress_percent = spr_stress / Double(h)
                        stress_percent_exponent = pow(stress_percent, -4.069)
                        calcd_cycle_life = round((14846 * stress_percent_exponent) / 1000) * 1000
                        
                            Length_label.text = String(Wire_Length)
                            Length_label.textColor = UIColor.red
                            Wire_size_label.text = String(wire_c)
                            Wire_Size_Slider.value = Float(b)
                            if calcd_cycle_life > 1000000 {
                                Cycles_label.text = String("\(Double(calcd_cycle_life / 1000000))" + "mil")
                                Cycles_label.textColor = UIColor.red
                            }
                            else {
                                Cycles_label.text = String("\(Int(calcd_cycle_life / 1000))" + "k")
                                Cycles_label.textColor = UIColor.red
                        }
                    }
            
                //}
           }
        }
    

    
 
    
    
    @IBAction func wire_size_stepper(_ sender: UIStepper) {
        if Wire_size_label.text != "Wire Size" {
            b = Int(sender.value)
            var bb = Int()
            bb = b + g

            
            if bb >= 26 {
                wire_stepper.maximumValue = Double(bb)
            }
            else {
            
       wire_c = Double(wire_d[g + b])!
                
        z = 0
        x = 0
   
            
            d = pow(wire_c, 4)
            Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_c + Double(spr_id)!))
            Wire_Length = round(((((Wire_Constant / IPPT) + 6)) * wire_c) * 100) / 100 //6 inactive coils
            max_spring_length_formula = width - ((Wire_Length + cone_width + sprg_stretch) * sprg_count) + (drum_width * 2)
    if Wire_Length < 19 || max_spring_length_formula < 1 {
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Solution Failed"
        refreshAlert.message = "Spring solution using the next larger wire size exceeds available torsion assembly length"
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
 
    }
            else {
        
         if wire_type == "ohd_grade" {
             h = AVG_PSI_OHD[g+b]
        }
         else{
             h = AVG_PSI_ASTM[g+b]
        }
        
                
wire_calc_stepper: for k in PSI_Factor {
                    x = x + 1 //creates cycle count to refrence PSI Factor arrays
                    y = x - 1
                    PSI_Factor_1 = Double(k)
                    wire_size_3 = pow(wire_c, 3)
                    cycle_constant = ((Double(h) * k) * wire_size_3) / 10.2
                    print(h)
                    print(k)
    
                    cycle_turns = (cycle_constant) / IPPT
    if cycle_turns < Turns {
        continue
    }
    else {
        //M.Daus Cycle formula
        spr_stress = ((32 * Torq) / (3.14159 * wire_size_3)) / sprg_count
        stress_percent = spr_stress / Double(h)
        stress_percent_exponent = pow(stress_percent, -4.069)
        calcd_cycle_life = round((14846 * stress_percent_exponent) / 1000) * 1000

        
        req_cyc_life = Double(cyc_life)!
        if req_cyc_life < calcd_cycle_life {
            Length_label.text = String(Wire_Length)
            Wire_size_label.text = String(wire_c)
            Wire_Size_Slider.value = Float(g+b)
            if calcd_cycle_life > 1000000 {
               Cycles_label.text = String("\(Double(calcd_cycle_life / 1000000))" + "mil")
            }
            else {
                        Cycles_label.text = String("\(Int(calcd_cycle_life / 1000))" + "k")
            }
       
         z = 1
            break wire_calc_stepper
            
                  }
               }
            }
        if z == 0 {
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Solution Failed"
            refreshAlert.message = "Spring solution exceeds available torsion assembly length and/or wire size or does not meet required cycle life. Changing the number of springs or reducing the required cycle life may allow a spring solution to be computed"
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
            
            Length_label.text = "Length"
            Cycles_label.text = "Cycles"
            IPPT_label.text = "IPPT"
            Turns_label.text = "Turns"
            Wire_size_label.text = "Wire Size"
            Wire_Size_Slider.value = 2
    

         }
        }
      }
     }
    }
    

    
    @IBAction func wire_size_selection(_ sender: UISlider) {
        var currentValue = Int(sender.value)
      
        // set min & max values based on drum selection
        self.Wire_Size_Slider.maximumValue = Float(wire_d.count) - 1
        self.Wire_Size_Slider.minimumValue = 0
        
        Wire_size_label.text = wire_d[currentValue]
        wire_size = "\(currentValue)"
        
        
    }
 
    
    @IBAction func next(_ sender: Any) {
        
        if Wire_Length == 0 {
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Parameters Missing"
            refreshAlert.message = ("Adjust parameters & Calculate a valid solution")
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        }
        else {
        self.performSegue(withIdentifier: "segue_1", sender: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destview1: _f_ViewController = segue.destination as! _f_ViewController
        destview1.spring_id = spr_id
        
        var destview2: _f_ViewController = segue.destination as! _f_ViewController
        destview2.spring_wire_size = Wire_size_label.text!
        
        var destview3: _f_ViewController = segue.destination as! _f_ViewController
        destview3.spring_length = String(Wire_Length)
        
        var destview4: _f_ViewController = segue.destination as! _f_ViewController
        destview4.spring_qty = String(sprg_count)
    }
  
    
    
    
    
    
    // testing arrays
    @IBAction func Calc(_ sender: Any) {
        j = 0
        i = 0
        x = 0
        h = 0
        z = 0
      wire_stepper.value = 0
        
        wire_stepper.isEnabled = true
        self.Wire_Size_Slider.maximumValue = Float(wire_d.count) - 1
        self.Wire_Size_Slider.minimumValue = 0
        Wire_size_label.text = wire_d[0]
        wire_size = Wire_size_label.text!
        self.Wire_Size_Slider.value = 2
        Wire_Size_Slider.isEnabled = true
        
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
            var IPPT_Label = Double(round(((Total_Torq/Rev_Open_Door) * 100) / 100))
            Turns = round((Torq/IPPT_Label)*100) / 100
            IPPT_label.text = String(IPPT_Label)
            Turns_label.text = String(Turns)
        }
        // Long Form calc for high lift
        if Lift_Type == "high_lift" {
            Torq = weight * High_MA
            Rem_Torq = Open_Weight * Flat_MA
            Total_Torq = Torq - Rem_Torq
            Rev_Open_Door = ((height-hi_lift)/Circ_of_Flat + Rev_of_Spiral)
            var IPPT_Label = Double(round(((Total_Torq/Rev_Open_Door) * 100) / 100))
            IPPT = round(((Total_Torq/Rev_Open_Door) * 100) / 100) / sprg_count
            Turns = round((Torq/IPPT_Label)*100) / 100
            IPPT_label.text = String(IPPT_Label)
            Turns_label.text = String(Turns)
        }
        
        // Long Form calc for vertical lift
        if Lift_Type == "vertical_lift" {
            Torq = weight * High_MA
            var IPPT_Label = Double(round((weight * 0.375) * 100) / 100)
            IPPT = round(((weight * 0.375) * 100) / 100)/sprg_count //rise per turn factor
            Turns = round((High_MA / 0.375) * 100) / 100 // rise per turn factor
            IPPT_label.text = String(IPPT_Label)
            Turns_label.text = String(Turns)
        }
      


        // loop through wire sizes to test options
wirecalc: for i in wire_d {
        wire_b = Double(i)!
        j = j + 1 //creates cycle count to refrence PSI arrays
        g = j - 1
            d = pow(wire_b, 4)
        Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire_b + Double(spr_id)!))
        Wire_Length = round(((((Wire_Constant / IPPT) + 6)) * wire_b) * 100) / 100 //6 inactive coils
        
        sprg_stretch = wire_b * 10
        max_spring_length_formula = width - ((Wire_Length + cone_width + sprg_stretch) * sprg_count) + (drum_width * 2)
        
            if Wire_Length < 16 || max_spring_length_formula < 1 {
                continue
            }
            else {
                // set the wire type equal to the consants
                if wire_type == "astm_229"{
                h = AVG_PSI_ASTM[g]}
                else {
                h = AVG_PSI_OHD[g]}
                
                for k in PSI_Factor {
                    x = x + 1 //creates cycle count to refrence PSI Factor arrays
                    y = x - 1
                    wire_size_3 = pow(wire_b, 3)
                    cycle_constant = ((Double(h) * k) * wire_size_3) / 10.2
                    print(Double(h) * k)
                    print(h)
                    print(k)
                    cycle_turns = (cycle_constant) / IPPT
                    if cycle_turns < Turns {
                        continue
                     }
                    else {
                        //M.Daus Cycle formula
                        spr_stress = ((32 * Torq) / (3.14159 * wire_size_3)) / sprg_count
                        stress_percent = spr_stress / Double(h)
                        stress_percent_exponent = pow(stress_percent, -4.069)
                        calcd_cycle_life = round((14846 * stress_percent_exponent) / 1000) * 1000
          
                        
                        req_cyc_life = Double(cyc_life)!
                        if req_cyc_life <= calcd_cycle_life {
                            Length_label.text = String(Wire_Length)
                            Wire_size_label.text = String(wire_b)
                            Wire_Size_Slider.value = Float(g)
                            if calcd_cycle_life > 1000000 {
                                Cycles_label.text = String("\(Double(calcd_cycle_life / 1000000), 1)" + "mil")
                            }
                            else {
                                Cycles_label.text = String("\(Int(calcd_cycle_life / 1000))" + "k")
                            }
                            
                            z = 1
                            break wirecalc
                        }
                    }
                }
            }
        }
        if z == 0 {
        var refreshAlert = UIAlertView()
            refreshAlert.title = "Solution Failed"
            refreshAlert.message = "Spring solution exceeds available torsion assembly length and/or wire size or does not meet required cycle life. Changing the number of springs or reducing the required cycle life may allow a spring solution to be computed"
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
            
            Length_label.text = "Length"
            Cycles_label.text = "Cycles"
            IPPT_label.text = "IPPT"
            Turns_label.text = "Turns"
            Wire_size_label.text = "Wire Size"
            Wire_Size_Slider.value = 2
            wire_stepper.minimumValue = 0
            wire_stepper.maximumValue = 25
        }
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
        else {
            let pickerLabel = UILabel()
            //pickerLabel.textColor = UIColor.blue
            pickerLabel.text = pickerdata_cyc_life[row]
            pickerLabel.font = UIFont(name:"Helvetica",size: 24) // In this use your custom font
            pickerLabel.adjustsFontSizeToFitWidth = true
            pickerLabel.textAlignment = NSTextAlignment.center
            
            cycle_life.text = String(pickerdata_cyc_life[row])
            cyc_life = pickerdata_cyc_life[row]
            
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
            test1 = String(test.characters.prefix(5))
            spring_id.text = String(test1)
            
            wire_d = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
          
            spr_id = String(test1)
            
            
        }
            
        if  pickerView == picker_cycles {
            //picker.isHidden = true
            //picker_cycles.isHidden = false
            print((pickerdata_cyc_life[row]))
            cycle_life.text = String(pickerdata_cyc_life[row])
            cyc_life = pickerdata_cyc_life[row]
            //return pickerdata_cyc_life[row]
    }

        wire_stepper.value = 0
     

}
    
}
