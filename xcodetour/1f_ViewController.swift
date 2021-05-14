

import UIKit
import MessageUI

class _f_ViewController: UIViewController, MFMailComposeViewControllerDelegate {

 

    
    @IBOutlet weak var sprg_id: UITextField!
    @IBOutlet weak var wire_size: UITextField!
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var quantity: UITextField!
    @IBOutlet weak var cones: UISwitch!
    @IBOutlet weak var tails: UISwitch!
    @IBOutlet weak var pair: UISwitch!
   
    @IBOutlet weak var shaft_size: UISwitch!
 
    @IBOutlet weak var cones_yes_no: UILabel!

    @IBOutlet weak var wind_direction: UISwitch!
    @IBOutlet weak var tails_yes_no: UILabel!
    @IBOutlet weak var shaft_label: UILabel!

    @IBOutlet weak var wind_direction_label: UILabel!
    @IBOutlet weak var pair_yes_no: UILabel!
    @IBOutlet weak var place_order: UIButton!
    @IBOutlet weak var qty_stepper: UIStepper!
    
    @IBOutlet weak var bottomHeight: NSLayoutConstraint!
    @IBOutlet weak var topHeight: NSLayoutConstraint!
    
    var spring_id = String()
    var spring_wire_size = String()
    var spring_length = String()
    var spring_qty = String()
    var wind_dirc = String()
    var cones_installed = String()
    var tails_out = String()
    var pair_spgs = String()
    var mesg = String()
    var shaft = String()


    
       
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      tails_yes_no.text = ""
        
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
   sprg_id.text = spring_id
   wire_size.text = spring_wire_size
   length.text = spring_length
  
    cones_installed = "Yes"
    tails_out = "No"
    tails_yes_no.text = "No"
    tails.isEnabled = false
    pair_spgs = "PR"
    shaft = ""
    wind_direction.isEnabled = false
    wind_direction_label.text = ""
        if spring_qty == "" {
             quantity.text = "1"
        }
        else{
            quantity.text = spring_qty
        }
        
  //      if sprg_asembly != "single" {
  //      self.spring_assy.setOn(true, animated: true)}
        

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))

        view.addGestureRecognizer(tap)
        
        sprg_id.keyboardType = UIKeyboardType.decimalPad
        wire_size.keyboardType = UIKeyboardType.decimalPad
        length.keyboardType = UIKeyboardType.decimalPad
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(self.cart(_:)), for: UIControl.Event.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc func cart(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cart", sender: nil)
    }
    

    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
   // func keyboardWillShow(sender: NSNotification) {
   //     self.view.frame.origin.y -= 150
   // }
   // func keyboardWillHide(sender: NSNotification) {
   //     self.view.frame.origin.y += 150
   // }
    
 //   func keyboardWillShow(notification: NSNotification) {
 //       if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
 //           if view.frame.origin.y == 0{
 //               self.view.frame.origin.y -= keyboardSize.height
 //           }
 //       }
 //   }
    
  //  func keyboardWillHide(notification: NSNotification) {
  //      if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
  //          if view.frame.origin.y != 0 {
  //              self.view.frame.origin.y += keyboardSize.height
  //          }
  //      }
  //  }
    
    
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func qty_stepper_click(_ sender: UIStepper) {
        let currentValue = Int(sender.value)
        quantity.text = "\(currentValue)"
        spring_qty = String(currentValue)
    }

    
    @IBAction func tails(_ sender: Any) {
        if tails.isOn{
            tails_yes_no.text = "Yes"
        }
        else{
            tails_yes_no.text = "No"
        }
    }

    
    @IBAction func cones(_ sender: UISwitch) {
        if cones.isOn {
            cones_installed = "Yes"
            tails.isEnabled = false
            cones_yes_no.text = "Yes"
        }
        else{
            cones_installed = "No"
            tails.isEnabled = true
            cones_yes_no.text = "No"
        }
    }
    
    @IBAction func pair_selected(_ sender: Any) {
        if pair.isOn{
            pair_spgs = "PR"
            wind_direction.isEnabled = false
            pair_yes_no.text = "Yes"
        }
        else{
        pair_spgs = "LW"
        wind_direction_label.text = "LW"
        wind_direction.isEnabled = true
            pair_yes_no.text = "No"
        }
        
        
    }
    @IBAction func wind_direction(_ sender: UISwitch) {
        if wind_direction.isOn{
            pair_spgs = "RW"
            wind_direction_label.text = "RW"
            pair_yes_no.text = "No"
        }
        else{
            pair_spgs = "LW"
            wind_direction_label.text = "LW"
            pair_yes_no.text = "No"
        }
        
    }
    
    @IBAction func shaft_size(_ sender: Any) {
        if shaft_size.isOn{
            shaft = ""
            shaft_label.text = ""
        }
        else{
            shaft = "1-1/4sft"
            shaft_label.text = "1-1/4\""
        }
        
    }

//nrs 600.500 not applicable & copyright doesn't apply
// not built in the course and scope of employment
    
    @IBAction func place_order(_ sender: Any) {
        spring_id = sprg_id.text!
        spring_wire_size = wire_size.text!
        spring_length = length.text!
        spring_qty = quantity.text!
 
        
        if pair_spgs != "PR" {
        //pair_spgs = wind_direction.text!
        }
       
        
        if cones_installed == "Yes"{
            mesg = ("\(spring_wire_size) x \(spring_id) x \(spring_length)\" \(pair_spgs) w/ cones \(shaft)")

        }
        if cones_installed == "No" && tails_out == "No"{
            mesg = ("\(spring_wire_size) x \(spring_id) x \(spring_length)\" \(pair_spgs) No Cones")

        }
        if cones_installed == "No" && tails_out == "Yes"{
            mesg = ("\(spring_wire_size) x \(spring_id) x \(spring_length)\" \(pair_spgs) Tails Out")
        }
        
    
        
        if spring_id == "" || spring_wire_size == "" || spring_length == "" {
            let refreshAlert = UIAlertView()
            refreshAlert.title = "Parameters Missing"
            refreshAlert.message = ("One or more required parameters is missing")
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        }
        else {
        if Double(spring_id)! < 3.75 && shaft == "1-1/4sft"{
            let refreshAlert = UIAlertView()
            refreshAlert.title = "Incorrect Shaft Size"
            refreshAlert.message = ("Shaft size option 1-1/4\" is not a valid selection for a spring ID under 3.75\"")
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
            
            shaft_size.isOn = true
            shaft = ""
            shaft_label.text = "1\""
        }
        else{
            let refreshAlert = UIAlertView()
                refreshAlert.title = "Spring(s) Added to Cart"
                refreshAlert.message = ("\(mesg) Qty \(spring_qty)")
                refreshAlert.addButton(withTitle: "OK")
                refreshAlert.show()
                list.append(mesg)
                list1.append(spring_qty)
            }
        }
    
    }
    
 
    @IBAction func tails_out(_ sender: UISwitch) {
        if tails.isOn {
            tails_out = "Yes"
        }
        else{
            tails_out = "No"
        }
    }
    
    
   }
    

