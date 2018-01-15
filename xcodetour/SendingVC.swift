//
//  1SendingVC.swift
//  xcodetour
//
//  Created by Jarrad Prida on 6/15/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit



class SendingVC: UIViewController {

 
    @IBOutlet weak var company_name: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var phone_number: UITextField!
    @IBOutlet weak var email_address: UITextField!

    
    var myarray: [String] = []
    var myarray1: [String] = []
    var mylongtermarray: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        view.addGestureRecognizer(tap)
        
 
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControlState.normal)
        button.addTarget(self, action: "cart:", for: UIControlEvents.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    func cart(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cart", sender: nil)
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    

    
    @IBAction func Save(_ sender: UIButton) {
        UserDefaults.standard.set(company_name.text, forKey: "company")
        UserDefaults.standard.set(address.text, forKey: "address")
        UserDefaults.standard.set(state.text, forKey: "state")
        UserDefaults.standard.set(city.text, forKey: "city")
        UserDefaults.standard.set(zip.text, forKey: "zip")
        UserDefaults.standard.set(name.text, forKey: "name")
        UserDefaults.standard.set(phone_number.text, forKey: "phone")
        UserDefaults.standard.set(email_address.text, forKey: "email")
        
        
        
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Customer Information"
        refreshAlert.message = "Customer information has been saved to this device and can be changed or deleted at any time. "
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
    }

    @IBAction func Info_Button(_ sender: UIButton) {
        var refreshAlert = UIAlertView()
        refreshAlert.title = "Customer Information"
        refreshAlert.message = "Customer information is saved locally on this device for the ease of ordering and not retained or distributed by the Overhead Door Corporation."
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()
    }

    override func viewDidAppear(_ animated: Bool) {
        var x = UserDefaults.standard.object(forKey: "company") as? String
        if x == ""{
            company_name.text = "Company Name"
        }
        else{
            company_name.text = x
        }
        
        var w = UserDefaults.standard.object(forKey: "address") as? String
        if w == "" {
            address.text = "Ship To Address"
        }
        else{
            address.text = w
        }
        
        var s = UserDefaults.standard.object(forKey: "city") as? String
        if s == ""{
            city.text = "City"
        }
        else{
            city.text = s
        }
        
        var t = UserDefaults.standard.object(forKey: "zip") as? String
        if t == ""{
            zip.text = "Zip Code"
        }
        else{
            zip.text = t
        }
        
        var y = UserDefaults.standard.object(forKey: "name") as? String
        if y == ""{
            name.text = "Customer Name"
        }
        else{
            name.text = y
        }
        
        var z = UserDefaults.standard.object(forKey: "state") as? String
        if z == ""{
            state.text = "State"
        }
        else{
            state.text = z
        }
        var u = UserDefaults.standard.object(forKey: "phone") as? String
        if u == ""{
            phone_number.text = "Phone Number"
        }
        else{
            phone_number.text = u
        }
        var v = UserDefaults.standard.object(forKey: "email") as? String
        if v == "" {
            email_address.text = "Email Address"
        }
        else{
            email_address.text = v
        }
    }


}

