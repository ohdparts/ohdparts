//
//  1m_ViewController.swift
//  xcodetour
//
//  Created by Jarrad Prida on 6/15/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit
import MessageUI

protocol DataSentDelagate {
    func userDidEnterData(data: String)
}

  var list: [String] = []
  var list1: [String] = []
  var myindex = 0
  var myindex1 = 0

class ReceivingVC: UIViewController, UITableViewDelegate, UITableViewDataSource, MFMailComposeViewControllerDelegate {

   
    @IBOutlet weak var PO: UITextField!
    @IBOutlet weak var JOB: UITextField!
    @IBOutlet weak var Customer_info: UITextView!
   
    @IBOutlet weak var shipping: UISwitch!
    
    var company_name = String()
    var name = String()
    var address = String()
    var city = String()
    var state = String()
    var zip = String()
    var phone_number = String()
    var email_address = String()
    var purchase_order = String()
    var job = String()
    var cust_info = String()
    var ex_shipping = String()
    var send_to_email = String()
    
    var prodcut = String()

    var delete_var = Int()
    @IBOutlet weak var tableview1: UITableView!
    var tableview: UITableView!
   
    @IBOutlet weak var label2: UILabel!
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // list.append(contentsOf: myarray)
       // list1.append(contentsOf: myarray1)
        return(list.count)
    //    return(list1.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! _a_TableViewCell
        
 
        
        cell.label1?.text = list[indexPath.row]
        cell.quantity?.text = list1[indexPath.row]
        prodcut = cell.label1.text!
        
     //  cell.textLabel?.text = list[indexPath.row]
     //   let test_label = UILabel()
     //   cell.addSubview(lablel1)
      //  cell.test_label?.text = list[indexPath.row]
        
     //   let btn = UIButton()
   //      cell.delete_btn.tag = indexPath.row
   //     cell.delete_btn.addTarget(self, action: #selector(ReceivingVC.btn_tapped(_:)), for: .touchUpInside)
        
        
    //    cell.delete_btn.backgroundColor = UIColor.red
    //    cell.delete_btn.titleLabel?.text = "-"
        
    //     cell.delete_btn.layer.masksToBounds = true
  //       cell.delete_btn.layer.cornerRadius = 0.44 * cell.delete_btn.bounds.size.width
        //   cell.addSubview(btn)
        

        
        cell.quantity.keyboardType = UIKeyboardType.numberPad
        
        return(cell)
    }
    
    
    

    
    @IBAction func place_order(_ sender: Any) {
        purchase_order = PO.text!
        job = JOB.text!
        cust_info = Customer_info.text!
        if purchase_order == "" {
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Parameters Missing"
            refreshAlert.message = ("PO is required")
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        }
        else{
            
            // call email order
            let mailComposeViewController = configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                self.showSendMailErrorAlert()
             }
        }
    }

    func configuredMailComposeViewController() -> MFMailComposeViewController {

        
        
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["jarrad.prida@gmail.com"])
              mailComposerVC.setSubject("PO Number: \(purchase_order) Job: \(job)")
           mailComposerVC.setMessageBody("\(cust_info) Product:\(list) Quantity:\(list1) \(ex_shipping)", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        
        switch result {
        case .cancelled:
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Order Cancelled"
            refreshAlert.message = "Order was not submitted"
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        case .failed:
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Order Failed"
            refreshAlert.message = "Order was not submitted. Check email settings to ensure a working email account and that you are connected to internet service"
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        case .saved:
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Order Saved"
            refreshAlert.message = "Order was saved in your Draft email folder and not submitted"
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
        case .sent:
            var refreshAlert = UIAlertView()
            refreshAlert.title = "Order Submitted"
            refreshAlert.message = "Thank you for your spring order. We will email you an acknowledgment shortly."
            refreshAlert.addButton(withTitle: "OK")
            refreshAlert.show()
            list.removeAll()
            list1.removeAll()
            tb.reloadData()
            PO.text = ""
            JOB.text = ""
            shipping.isOn = false
        default:
            break
        }

       controller.dismiss(animated: true, completion: nil)

        
   
    }



   // @IBAction func btn_tapped(_ sender: UIButton) {
        

        
   //     let alertController = UIAlertController(title: "Delete Item From Cart", message: "Remove \(prodcut) from cart?", preferredStyle: .alert)
        
        // Create OK button
   //     let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
   //         let btn_row = sender.tag
   //         list.remove(at: btn_row)
   //        self.tableview1.reloadData()
            
    //    }
   //     alertController.addAction(OKAction)
        
        // Create Cancel button
    //    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction!) in
           // print("Cancel button tapped");
   //     }
     //   alertController.addAction(cancelAction)
        
        
   //     self.present(alertController, animated: true, completion:nil)
        
       
   // }
 
    
    
  public func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
       // myindex = indexPath.row
       // myindex1 = indexPath.row
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! _a_TableViewCell
        
          cell.quantity?.text = list1[indexPath.row]
          prodcut = (cell.quantity?.text)!
    }
      
   
        

        
   

        
    
    

    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
           list.remove(at: indexPath.row)
           list1.remove(at: indexPath.row)
            delete_var = indexPath.row
        
            tableView.reloadData()
        }
    }
    
    @IBOutlet weak var tb: UITableView!
    var test_data = String()
    var company = String()
    var myarray: [String] = []
    var myarray1: [String] = []
    var mylongtermarray: [String] = []
    var delagate: DataSentDelagate? = nil
    
    @IBOutlet weak var RecievingText: UILabel!
    @IBOutlet weak var company_label: UILabel!
    

    override func viewDidAppear(_ animated: Bool) {

    }

 

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tb?.allowsSelection = true
        tb?.dataSource = self
        tb?.delegate = self
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
      
        var x = UserDefaults.standard.object(forKey: "company") as? String
        if x == "" || x == nil {
            company_name = "Company Name"
        }
        else{
            company_name = x!
        }
        
        var w = UserDefaults.standard.object(forKey: "address") as? String
        if w == "" || w == nil  {
            address = "Ship To Address"
        }
        else{
            address = w!
        }
        
        var s = UserDefaults.standard.object(forKey: "city") as? String
        if s == "" || s == nil {
            city = "City"
        }
        else{
            city = s!
        }
        
        var t = UserDefaults.standard.object(forKey: "zip") as? String
        if t == "" || t == nil {
            zip = "Zip Code"
        }
        else{
            zip = t!
        }
        
        var y = UserDefaults.standard.object(forKey: "name") as? String
        if y == "" || y == nil {
            name = "Customer Name"
        }
        else{
            name = y!
        }
        
        var z = UserDefaults.standard.object(forKey: "state") as? String
        if z == "" || z == nil {
            state = "State"
        }
        else{
            state = z!
        }
        var u = UserDefaults.standard.object(forKey: "phone") as? String
        if u == "" || u == nil {
            phone_number = "Phone Number"
        }
        else{
            phone_number = u!
        }
        var v = UserDefaults.standard.object(forKey: "email") as? String
        if v == "" || v == nil {
            email_address = "Email Address"
        }
        else{
            email_address = v!
        }
      
       Customer_info.text = ("Ship To: \(company_name) At: \(address), \(city), \(state) \(zip) Ordered By: \(name) Phone Number: \(phone_number) Email: \(email_address)")
        
        //RecievingText.text = test_data
       // company_label.text = company
     //   let defaults = UserDefaults.standard
     //   list = defaults.object(forKey: "mylist") as? [String] ?? [String]()
     //   list1 = defaults.object(forKey: "mylist1") as? [String] ?? [String]()

      //list.append(contentsOf: myarray)
      //list1.append(contentsOf: myarray1)
        
        if state == "HI" || state == "AK" || state == "WA" || state == "OR" || state == "CA" || state == "NV" || state == "ID" || state == "MT" || state == "WY" || state == "AZ" || state == "UT" || state == "BC" || state == "AB" || state == "SK"  || state == "YT" {
            send_to_email = "ohdpartswest@ohdparts.com"
            //11
        }
        
        if state == "CO" || state == "NM" || state == "ND" || state == "SD" || state == "NE" || state == "KS" || state == "OK" || state == "TX" || state == "LA" || state == "AK" || state == "MO" || state == "IA" || state == "MN" || state == "AL" || state == "MS" || state == "TN" || state == "KY" || state == "GA" || state == "FL" || state == "MB" || state == "NT" {
            send_to_email = "ohdpartscentral@ohdparts.com"
            //19
        }
        
        if state == "WI" || state == "IL" || state == "IN" || state == "MI" || state == "OH" || state == "PA" || state == "WV" || state == "VA" || state == "NC" || state == "SC" || state == "MD" || state == "DE" || state == "NJ" || state == "NY" || state == "CO" || state == "RI" || state == "NH" || state == "VY" || state == "MA" || state == "ME"  || state == "PE"  || state == "QC"  || state == "ON"  || state == "NS"  || state == "NL" || state == "NB" || state == "NU" {
            send_to_email = "ohdpartseast@ohdparts.com"
            //20
        }
        
        
        tb?.reloadData()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        view.addGestureRecognizer(tap)

        
   shipping.isOn = false
        
    }
    
   func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
      view.endEditing(true)
}

    @IBAction func ex_ship(_ sender: UISwitch) {
        if shipping.isOn{
            ex_shipping = "Expedite Shipping"
        }
    }

    
}
