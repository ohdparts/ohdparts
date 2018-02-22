//
//  product_catalog.swift
//  xcodetour
//
//  Created by Jarrad Prida on 7/20/17.
//  Copyright © 2017 Jarrad Prida. All rights reserved.
//

import UIKit

let products = ["Angle_Prepunched","Bearings_Steel","Bearings_Precision","Bottom_Bars","Bottom_Brackets_Residential","Bottom_Brackets_Commercial","Cable_Bulk","Cable_Assemblies","Cable_Sleeves","Cable_Thimbles","Cable_Stops","Chain_Hoist_Kits","Chain_Hoist_Accessories","Chain_Hoist_Connecting_Link","Chain_Hoist_Offset_Link","Chain_Hoist_Sproket","Drums_Standard_Lift","Drums_Vertical_Lift","Drums_High_Lift","Extension_Spring_Hardware","Extension_Springs_Single_Loop","Extension_Springs_Double_Loop","Extension_Springs_Clipped_End","Fasteners_Flat_Head_Carriage_Bolt","Fasteners_Machine_Bolt","Fasteners_Track_Bolt","Fasteners_Hex_Head_Bolts","Fasteners_Hex_Head_Nuts","Fasteners_Flange_Hex_Head_Nuts","Fasteners_Kep_Hex_Head_Nuts","Fasteners_Nylon_Lock_Hex_Head_Nuts","Fasteners_Washers","Fasteners_Self_Tapping_Screws","Fasteners_Self_Drilling_Screws","Fasteners_Hex_Head_Lag_Screw","Fasteners_Hex_Head_Concrete_Sleeve_Anchor","Hardware_Box_Residential","Hinges_Narrow_Body","Hinges_Wide_Body","Lock_Assemblies","Lock_Slide_Lock","Lock_Outside_Key_Release","Lubricants_Spray_Lube","Lubricants_Private_Label_Spray_Lube","Lubricants_Low_Temp","Operator_Reinforcement_Bracket","Operator_Reinforcement_Bracket_Adjustable","Operator_Accesories_Genie","Operator_Parts_Genie","Operator_Parts_LiftMaster","Operator_Accesories_LiftMaster","Operator_Accesories_Linear","Operator_Packages_Linear","Operator_Packages_Genie","Operator_Packages_LiftMaster","Rollers_2in_Nylon","Rollers_2in_Steel","Rollers_3in","Rollers_Car_Wash","Struts_22ga","Struts_20ga","Struts_3in_20ga","Top_Fixtures_Adjustable","Top_Fixtures_Low_Head_Room","Track_Brackets_Jamb_Brackets","Track_Brackets_Splice_Plates","Track_Brackets_Flag_Brackets","Torsion_Spring_Plugs_1in_Shaft","Torsion_Spring_Plugs_125in_Shaft","Torsion_Tubes","Torsion_Solid_Shaft","Torsion_Shaft_Collars","Torsion_Shaft_Couplers","TorqueMaster_Conversion_Kits","TorqueMaster_Parts","Vinyl_Stop_No_Holes","Vinyl_Stop_with_Holes","Weather_Seal_T_Bottom_Seal","Weather_Seal_Bead_Bottom_Seal","Weather_Seal_Brush_Seal","Weather_Seal_45_Retainer","Weather_Seal_90_Retainer","Weather_Seal_180_Retainer","Weather_Seal_90_and_180_Retainer","Weather_Seal_Clipon_Jamb_Seal","Weather_Seal_Reverse_Angle_Jamb_Seal"]

var cat_index = 0


class product_catalog: UIViewController, UITableViewDelegate, UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "product_cell")
        cell.textLabel?.text = products[indexPath.row]
        cell.backgroundColor = UIColor.blue
        cell.textLabel?.textColor = UIColor.white
        

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cat_index = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
 

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
tableview.delegate = (self as! UITableViewDelegate)
tableview.dataSource = self

        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.plain, target: self, action: #selector(ViewController.addTapped))
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "shopping-cart-icon.png"), for: UIControlState.normal)
        button.addTarget(self, action: "cart:", for: UIControlEvents.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        var barButton = UIBarButtonItem.init(customView: button)
        //button.setTitle("123", for: UIControlState.normal)
        self.navigationItem.rightBarButtonItem = barButton
        
    }

    func cart(_ sender: Any) {
        
        self.performSegue(withIdentifier: "cart", sender: nil)
    }

    }
