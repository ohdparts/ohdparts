
import UIKit

class _b_ViewController: UIViewController {

 
    @IBOutlet weak var ohd_grade_outlet: UIButton!
    @IBOutlet weak var astm_229_outlet: UIButton!
    @IBOutlet weak var single_sprg_outlet: UIButton!
    @IBOutlet weak var duplex_outlet: UIButton!
    @IBOutlet weak var standard_lift_outlet: UIButton!
    @IBOutlet weak var vertical_lift_outlet: UIButton!
    @IBOutlet weak var high_lift_amount_outlet: UILabel!


    
    
    var wire_type = String()
    var spring_config = String()
    var lift_type = String()
    var high_lift_amount = String()
    
    @IBAction func ohd_grade(_ sender: Any) {
        ohd_grade_outlet.backgroundColor = UIColor.lightGray
        astm_229_outlet.backgroundColor = UIColor.lightGray
        wire_type = "ohd_grade"
    }
    
    @IBAction func astm_229(_ sender: Any) {
        ohd_grade_outlet.backgroundColor = UIColor.darkGray
        astm_229_outlet.backgroundColor = UIColor.darkGray
        wire_type = "astm_229"
    }
    
    @IBAction func single_sprg(_ sender: Any) {
        single_sprg_outlet.backgroundColor = UIColor.lightGray
       duplex_outlet.backgroundColor = UIColor.darkGray
        spring_config = "single"
    }
    
    @IBAction func duplex(_ sender: Any) {
        single_sprg_outlet.backgroundColor = UIColor.darkGray
        duplex_outlet.backgroundColor = UIColor.lightGray
        spring_config = "duplex"
    }
    
    @IBAction func standard_lift(_ sender: Any) {
        standard_lift_outlet.backgroundColor = UIColor.lightGray
        vertical_lift_outlet.backgroundColor = UIColor.darkGray
        //high_lift_outlet.backgroundColor = UIColor.darkGray
        lift_type = "standard_lift"
        
        high_lift_amount_outlet.isHidden = true
       // high_lift_inches.isHidden = true
       // high_lift_inches.text = "0"
    }
    
    @IBAction func vertical_lift(_ sender: Any) {
        standard_lift_outlet.backgroundColor = UIColor.darkGray
        vertical_lift_outlet.backgroundColor = UIColor.lightGray
     //   high_lift_outlet.backgroundColor = UIColor.darkGray
         lift_type = "vertical_lift"
        
        high_lift_amount_outlet.isHidden = true
     //   high_lift_inches.isHidden = true
     //   high_lift_inches.text = "0"
    }
  
    @IBAction func high_lift(_ sender: Any) {
        standard_lift_outlet.backgroundColor = UIColor.darkGray
        vertical_lift_outlet.backgroundColor = UIColor.darkGray
     //   high_lift_outlet.backgroundColor = UIColor.lightGray
        lift_type = "hi_lift"
        
        high_lift_amount_outlet.isHidden = false
   //     high_lift_inches.isHidden = true
    //    high_lift_inches.text = "0"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ohd_grade_outlet.backgroundColor = UIColor.lightGray
           astm_229_outlet.backgroundColor = UIColor.darkGray
        wire_type = "ohd_grade"
        single_sprg_outlet.backgroundColor = UIColor.lightGray
        duplex_outlet.backgroundColor = UIColor.darkGray
        spring_config = "single"
        standard_lift_outlet.backgroundColor = UIColor.lightGray
        vertical_lift_outlet.backgroundColor = UIColor.darkGray
     //   high_lift_outlet.backgroundColor = UIColor.darkGray
        lift_type = "standard_lift"
        
        
   
    //    high_lift_inches.isHidden = true
    //    high_lift_inches.text = "0"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destview: _c_ViewController = segue.destination as! _c_ViewController
        destview.labeltext = wire_type
        var destview1: _c_ViewController = segue.destination as! _c_ViewController
        destview1.labeltext1 = spring_config
        var destview2: _c_ViewController = segue.destination as! _c_ViewController
        destview2.labeltext2 = lift_type
    var destview3: _c_ViewController = segue.destination as! _c_ViewController
        destview3.labeltext3 = high_lift_amount
    }
    
  //  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  //      self.view.endEditing(true)
   //     }
        
    
   //  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
   //     return (true)
    
    //}
        
}

 

