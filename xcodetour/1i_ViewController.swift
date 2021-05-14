

import UIKit


class _i_ViewController: UIViewController {
    
   
    @IBOutlet weak var outer_spg_id: UITextField!
    @IBOutlet weak var inner_spg_id: UITextField!
    @IBOutlet weak var outer_wire_size: UITextField!
    @IBOutlet weak var inner_wire_size: UITextField!
  
    @IBOutlet weak var outer_length: UITextField!
    @IBOutlet weak var inner_length: UITextField!
    @IBOutlet weak var quantity: UITextField!
   
   
    @IBOutlet weak var sft_size: UISwitch!
    @IBOutlet weak var pair: UISwitch!
    @IBOutlet weak var wind_direction: UISwitch!
    
    @IBOutlet weak var shaft_label: UILabel!
  
    @IBOutlet weak var place_order: UIButton!
    @IBOutlet weak var qty_stepper: UIStepper!
    
    @IBOutlet weak var yes_no: UILabel!
    @IBOutlet weak var LW_RW: UILabel!


    
    var outer_spring_id = String()
    var inner_spring_id = String()
    var outer_spring_wire_size = String()
    var inner_spring_wire_size = String()
    var outer_spring_length = String()
    var inner_spring_length = String()
    var c_name = String()
    var spring_qty = String()
    var pair_sprgs = String()
    var y_n = String()
    var left_right = String()
    var qty = String()
    var mesg = String()
    var mesg1 = String()
    var shaft = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wind_direction.isEnabled = false
        LW_RW.text = ""
        pair_sprgs = "PR"
        outer_spg_id.text = outer_spring_id
        inner_spg_id.text = inner_spring_id
        outer_wire_size.text = outer_spring_wire_size
        inner_wire_size.text = inner_spring_wire_size
        outer_length.text = outer_spring_length
        inner_length.text = inner_spring_length
        if spring_qty == "" {
            quantity.text = "1"
        }
        else{
            quantity.text = spring_qty
        }
        
        outer_spg_id.keyboardType = UIKeyboardType.decimalPad
        inner_spg_id.keyboardType = UIKeyboardType.decimalPad
        outer_wire_size.keyboardType = UIKeyboardType.decimalPad
        inner_wire_size.keyboardType = UIKeyboardType.decimalPad
        outer_length.keyboardType = UIKeyboardType.decimalPad
        inner_length.keyboardType = UIKeyboardType.decimalPad
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(ViewController.cart(_:)), for: UIControl.Event.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(_f_ViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @objc func cart(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cart", sender: nil)
    }

    @IBAction func pair(_ sender: Any) {
        if pair.isOn{
            pair_sprgs = "PR"
            wind_direction.isEnabled = false
            yes_no.text = "Yes"
        }
        else{
            wind_direction.isEnabled = true
            yes_no.text = "No"
            pair_sprgs = "LW"
            LW_RW.text = "LW"
        }
    }
    
    @IBAction func wind(_ sender: Any) {
        if wind_direction.isOn{
            pair_sprgs = "RW"
            LW_RW.text = "RW"
        }
        else{
            pair_sprgs = "LW"
            LW_RW.text = "LW"
        }
    }
    
    @IBAction func shaft_size(_ sender: Any) {
        if sft_size.isOn{
            shaft = ""
            shaft_label.text = "1\""
        }
        else{
            shaft = "1-1/4sft"
            shaft_label.text = "1-1/4\""
        }
    }
    
    @IBAction func qty_stepper(_ sender: UIStepper) {
        let currentValue = Int(sender.value)
        quantity.text = "\(currentValue)"
        spring_qty = String(currentValue)
    }

    
    @IBAction func place_order(_ sender: Any) {
        outer_spring_id = outer_spg_id.text!
        inner_spring_id = inner_spg_id.text!
        outer_spring_wire_size = outer_wire_size.text!
        inner_spring_wire_size = inner_wire_size.text!
        outer_spring_length = outer_length.text!
        inner_spring_length = inner_length.text!
        qty = quantity.text!
        
        mesg = ("Duplex Outer \(outer_spring_wire_size) x \(outer_spring_id) x \(outer_spring_length)\(pair_sprgs) \(shaft)")
    
        mesg1 = ("Duplex Inner \(inner_spring_wire_size) x \(inner_spring_id) x \(inner_spring_length)\(pair_sprgs) \(shaft)")
    
    
    if outer_spring_id == "" || inner_spring_id == "" || outer_spring_wire_size == ""  || inner_spring_wire_size == "" || outer_spring_length == "" || inner_spring_length == ""{
        let refreshAlert = UIAlertView()
    refreshAlert.title = "Parameters Missing"
    refreshAlert.message = ("One or more required parameters is missing")
    refreshAlert.addButton(withTitle: "OK")
    refreshAlert.show()
    }
    else{
        let refreshAlert = UIAlertView()
        refreshAlert.title = "Spring Added to Cart"
        refreshAlert.message = ("\(mesg) \(mesg1) Qty \(qty)")
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
        list.append(mesg)
        list.append(mesg1)
        list1.append(qty)
        list1.append(qty)
        }
    }
    
    




}
