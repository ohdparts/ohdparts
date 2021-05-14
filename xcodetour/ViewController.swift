//
//  ViewController.swift
//  xcodetour
//
//  Created by Jarrad Prida on 12/11/16.
//  Copyright © 2016 Jarrad Prida. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSentDelagate {

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var wire_grade_switch: UISwitch!
    @IBOutlet weak var wire_grade_label: UITextField!
    

    
    var menuShowing = false
    var buid = false
    var buid_duplex = false
    var convert = false
    var wire_grade = String()
    var spring_config = String()
    var customer = false
    var catalog = false
   
    @IBOutlet weak var notifications: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let notificationType = UIApplication.shared.currentUserNotificationSettings!.types
        if notificationType == [] {
            // User is registered for notification
            notifications.setTitle("**Turn Notifications on here to get flash sale & new prodcut info!", for: .normal)
        }
        else {
            // Show alert user is not registered for notification
            notifications.setTitle("", for: .normal)
            notifications.isEnabled = false
        }
        
 
        
        
        leadingConstraint.constant = -210
        
    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
   // navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.addTapped))
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControl.State.normal)
        button.addTarget(self, action: #selector(self.cart(_:)), for: UIControl.Event.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
        

        
      wire_grade_label.text = "Class II"
      wire_grade = "astm_229"
      buid = false
      buid_duplex = false
      convert = false
      customer = false
    catalog = false
        menuShowing = false
    
    }
    
    func viewDidAppear(){
        let notificationType = UIApplication.shared.currentUserNotificationSettings!.types
        if notificationType == [] {
            // User is registered for notification
            notifications.setTitle("**Turn Notifications on here to get flash sale & new prodcut info!", for: .normal)
        }
        else {
            // Show alert user is not registered for notification
            notifications.setTitle("", for: .normal)
            notifications.isEnabled = false
        }
        
    }
    
    @objc func addTapped (sender:UIButton) {
        //println("add pressed")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        buid = false
        buid_duplex = false
        convert = false
        customer = false
        catalog = false
        menuShowing = false
    }
    
    @IBAction func openMenu(_ sender: Any) {
        if (menuShowing) {
        leadingConstraint.constant = -210
    }
        else {
        leadingConstraint.constant = 0
           
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
    }

    @IBAction func GO(_ sender: Any) {
        if (menuShowing) {
            leadingConstraint.constant = -210
        }
        else {
            leadingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
    }
    
    @IBAction func wire(_ sender: Any) {
        if wire_grade_switch.isOn {
            wire_grade = "astm_229"
            wire_grade_label.text = "Class II"
        }
        else {
            wire_grade = "ohd_grade"
            wire_grade_label.text = "OHD Grade"
        }
    }
    
    @IBAction func phone_call(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: "tel://8666437278")! as URL, options: [:], completionHandler: nil)
        //(866) 643-7278
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if buid == true {
            let destview: _c_ViewController = segue.destination as! _c_ViewController
            destview.labeltext = wire_grade
            let destview1: _c_ViewController = segue.destination as! _c_ViewController
            spring_config = "single"
            destview1.labeltext1 = spring_config
        }
        if buid_duplex == true {
            let destview: _c_ViewController = segue.destination as! _c_ViewController
            destview.labeltext = wire_grade
            let destview1: _c_ViewController = segue.destination as! _c_ViewController
            spring_config = "duplex"
            destview1.labeltext1 = spring_config
        }
        if convert == true{
            let destview1: jj_ViewController = segue.destination as! jj_ViewController
            destview1.labeltext = wire_grade
        }
        
        if customer == true{
            let _: SendingVC = segue.destination as! SendingVC
        }
        if catalog == true{
            let _: product_catalog = segue.destination as! product_catalog
        }
           }

     @objc func cart(_ sender: Any) {
      
        self.performSegue(withIdentifier: "cart", sender: nil)
    }
    
    @IBAction func build(_ sender: Any) {
        buid = true
          self.performSegue(withIdentifier: "segue", sender: nil)
    }
    @IBAction func build_duplex(_ sender: Any) {
         buid_duplex = true
        self.performSegue(withIdentifier: "segue", sender: nil)
       
    }
    @IBAction func convert(_ sender: Any) {
        convert = true
          self.performSegue(withIdentifier: "segue1", sender: nil)
        
    }
    
 
    @IBAction func wire_info(_ sender: Any) {
        /*let refreshAlert = UIAlertView()
        refreshAlert.title = "Spring Wire Type"
        refreshAlert.message = "Springs sold by OHD Parts are all manufactured from Class II wire which has much higher tensile strength than OHD Grade wire."
        refreshAlert.addButton(withTitle: "OK")
        refreshAlert.show()*/
        let alertController = UIAlertController(title: "Spring Wire Type",
                                                   message: "Springs sold by OHD Parts are all manufactured from Class II wire which has much higher tensile strength than OHD Grade wire.",
                                            preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "OK",
                                             style: .cancel,
                                           handler: { (action:UIAlertAction!) in
                                        
            })
        alertController.addAction(cancelAction)
        self.present(alertController,
                         animated: true,
                         completion:nil)
    }

    @IBAction func ohd_parts_website(_ sender: Any) {
        if let url = URL(string: "http://www.ohdparts.com") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    @IBAction func customer_info(_ sender: Any) {
        customer = true
        self.performSegue(withIdentifier: "segue4", sender: nil)
    }
  
    @IBAction func product_catalog(_ sender: Any) {
        catalog = true
        self.performSegue(withIdentifier: "catalog", sender: nil)
    }
    
    
    func userDidEnterData(data: String) {
        //dataEntryTextField.text = test
    }
    
    @IBAction func change_notifications(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: UIApplication.openSettingsURLString)! as URL, options: [:], completionHandler: nil)
        
    }
    
    
}
