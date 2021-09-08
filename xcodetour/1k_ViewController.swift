

import UIKit

class _k_ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var wire_label: UITextField!
    @IBOutlet weak var sprg_qty_label: UITextField!
    @IBOutlet weak var IPPT_label: UILabel!
    @IBOutlet weak var turns_label: UILabel!
    @IBOutlet weak var weight_label: UILabel!
    @IBOutlet weak var length_label: UILabel!
    @IBOutlet weak var cycles_label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var sprg_id_label: UITextField!
    @IBOutlet weak var wire_slider: UISlider!
    @IBOutlet weak var qty_stepper: UIStepper!
    
    
    var spring_qty = Double()
    var spring_qty1 = Double()
    var pickerdata: [String] = [String]()
    var pickerdata_cyc_life: [String] = [String]()
    var test = String()
    var test1 = String()
    var spr_id = String()
    var spring_id = String()
    var wire_size = String()
    var sprg_length = Double()
    var IPPT = Double()
    var IPPT_1 = Double()
    var weight = Double()
    var wire = Double()
    var wire1 = Double()
    var wire_factor = Double()
    var mis_matched_spgs = String()
    var d = Double()
    var Wire_Constant = Double()
    var Wire_Length = Double()
    var inactive_coils = Double()
    var spring_inside_diameter = Double()
    var sprg_weight = Double()
    var g = Double()
    var c = Double()
    var e = Double()
    var h = Double()
    var turns = Double()
    var stress_calc = Double()
    var torque = Double()
    var avg_psi = Int()
    var stress_perc = Double()
    var calc_cycle_life = Double()
    var PSI_count = Int()
    var spring_id_count1 = Int()
    var spring_id_count = Int()
    var wire_grade = String()
    var s = Int()
    var wire_count1 = Int()
    var wire_grade1 = String()
    var actual_cycle_life = Double()
    var currentValue = Int()
    
    
        var wire_d: [String] = [".207",".2187",".2253",".234",".2437",".250",".2625",".273",".283",".289",".295",".3065",".3125",".3195",".331",".3437",".3625",".375",".3938",".4062",".4218",".4375",".4531",".4615",".4687",".4900"]
    
    var AVG_PSI_ASTM: [Int] = [228500,227500,226500,226026,225500,223500,223081,222758,222435,222242,222048,221661,221500,221143,220595,219990,219095,218500,217008,216024,214786,213540,212282,211605,211024,209306]
    
    var AVG_PSI_OHD: [Int] = [221261,218723,217363,215642,213813,212671,210505,208780,207210,206300,205413,203771,202944,202503,200510,198932,196722,195328,193333,192080,190567,189112,187727,187005,186398,184668]
    

    
    override func viewDidLoad() {
 
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
    pickerdata = ["1.750\" (1-3/4\")", "2.000\" (2\")", "2.250\" (2-1/4\")", "2.625\" (2-5/8\")", "3.375\" (3-3/8\")", "3.750\" (3-3/4\")", "5.875\" (5-7/8\")", "6.000\" (6\")", "7.625\" (7-5/8\")"]
        
        wire_label.text = wire_size
        wire = Double(wire_size)!
        sprg_qty_label.text = String(Int(spring_qty))
        spring_qty1 = spring_qty
        qty_stepper.value = spring_qty
        sprg_id_label.text = spring_id
        IPPT_label.text = String(IPPT)
        turns_label.text = String(turns)
        weight_label.text = String(sprg_weight)
        length_label.text = String(sprg_length)
        cycles_label.text = "10,000"
        spring_id_count = spring_id_count1
        //picker.selectedRow(inComponent: spring_id_count)
        wire_slider.value = Float(wire_count1)
        spring_inside_diameter = Double(spring_id)!
        
        self.picker.dataSource = self
        self.picker.delegate = self
        currentValue = wire_count1
        //picker.selectedRow(inComponent: spring_id_count)
   


    }

   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return pickerdata.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     
        s = s + 1 // sets count to select row on viewdidload
      
            // picker.isHidden = false
            // picker_cycles.isHidden = true
            print((pickerdata[row]))
            test = String(pickerdata[row])
            test1 = String(test.prefix(5))
     
        
        if s < 20 {
        picker.selectRow(spring_id_count, inComponent: 0, animated: true)
        }
        else {
             sprg_id_label.text = String(test1)
             spr_id = String(test1)
        }
        
            return pickerdata[row]
         
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
            // picker.isHidden = false
            // picker_cycles.isHidden = true
            test = String(pickerdata[row])
            test1 = String(test.prefix(5))
            sprg_id_label.text = String(test1)
            spr_id = String(test1)
            spring_inside_diameter = Double(spr_id)!
        
   
        }
        
    @IBAction func qty_stepper(_ sender: UIStepper) {
        let currentValue = Int(sender.value)
        sprg_qty_label.text = "\(currentValue)"
        spring_qty1 = Double(currentValue)
    }

    @IBAction func wire_slider(_ sender: UISlider) {
        currentValue = Int(sender.value)

        wire_label.text = wire_d[currentValue]
        wire = Double(wire_d[currentValue])!
        wire_count1 = currentValue
    }
    @IBAction func wire_slider_plus(_ sender: UIButton) {
        if currentValue < 25 {
            currentValue = currentValue + 1
            wire_label.text = wire_d[currentValue]
            wire = Double(wire_d[currentValue])!
            wire_count1 = currentValue
            wire_slider.value = Float(currentValue)
        }
    }
    
    @IBAction func wire_slider_neg(_ sender: UIButton) {
        if currentValue > 0 {
            currentValue = currentValue - 1
            wire_label.text = wire_d[currentValue]
            wire = Double(wire_d[currentValue])!
            wire_count1 = currentValue
            wire_slider.value = Float(currentValue)
        }
    }
    
    @IBAction func calc(_ sender: Any) {
        d = pow(wire, 4)
        h = pow(wire, 3)
        g = pow(wire, 2)
        
        wire1 = Double(wire_size)! //original wire size
        if spring_inside_diameter <= 3.375 {
            inactive_coils = 5
        }
        else{
            inactive_coils = 3
        }
        Wire_Constant = (3.14159 * 30 * 1000000 * d) / (32 * (wire + spring_inside_diameter))
        IPPT = IPPT_1
        Wire_Length = round(((((Wire_Constant / IPPT_1) + inactive_coils) * spring_qty1) * wire) * 100) / 100 //3 inactive coils
        sprg_weight = (((0.283 * (Wire_Length / wire)) * 3.14159) * ((wire + spring_inside_diameter) * 3.14159) * (g / 4))
        if wire_grade1 == "ohd_grade" {
            avg_psi = AVG_PSI_OHD[wire_count1]
        }
        else{
            avg_psi = AVG_PSI_ASTM[wire_count1]
        }
        
        wire_factor = 1 - (wire - wire1) // made up to get cycles closer to other programs
        stress_calc = ((32 * (torque * wire_factor)) / (3.14159 * h))
        stress_perc = stress_calc / Double(avg_psi)
        c = pow(stress_perc, -4.0691)
        calc_cycle_life = 14846 * c
        actual_cycle_life = (round(calc_cycle_life / 1000))
        turns = torque / IPPT
        
        if actual_cycle_life > 1000 {
            cycles_label.text  = String("\(round(actual_cycle_life / 1000))" + "mil")
        }
        else {
            cycles_label.text  = String("\(Int(actual_cycle_life))" + "k")
        }
    
        //cycles_label.text = String(round(calc_cycle_life / 100) * 100)
        turns_label.text = String(round(turns * 100) / 100)
        IPPT_label.text = String(round(IPPT * 100) / 100)
        length_label.text = String(round(Wire_Length * 100) / 100)
        weight_label.text = String(round(sprg_weight * 100) / 100)
        
    }
        
    @IBAction func next(_ sender: Any) {
        if sprg_weight == 0 {
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
        let destview1: _f_ViewController = segue.destination as! _f_ViewController
        destview1.spring_wire_size = String(wire)

        let destview2: _f_ViewController = segue.destination as! _f_ViewController
        destview2.spring_id = String(spring_inside_diameter)
        
        let destview3: _f_ViewController = segue.destination as! _f_ViewController
        destview3.spring_length = String(Wire_Length)
        
        let destview4: _f_ViewController = segue.destination as! _f_ViewController
        destview4.spring_qty = "1"
        

    }

}

    
