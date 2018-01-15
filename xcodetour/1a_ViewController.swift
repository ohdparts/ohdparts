
import UIKit

class _a_ViewController: UIViewController {

    @IBOutlet weak var single_sprg: UIButton!
    @IBOutlet weak var duplex_sprg: UIButton!
    
    
    
    override func viewDidLoad() {
      //  self.single_sprg.titleLabel?.adjustsFontSizeToFitWidth = true
    //    self.single_sprg.titleLabel?.minimumScaleFactor = 0.5
     //   self.duplex_sprg.titleLabel?.adjustsFontSizeToFitWidth = true
     //   self.duplex_sprg.titleLabel?.minimumScaleFactor = 0.5
    //    self.single_sprg.titleLabel?.numberOfLines = 1
     //   self.single_sprg.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func single_spring_order(_ sender: Any) {
        self.performSegue(withIdentifier: "segue_2", sender: nil)
    }

    @IBAction func duplex_spring_order(_ sender: Any){
              self.performSegue(withIdentifier: "segue_1", sender: nil)
    }


   //single_sprg.titleLabel.adjustsFontSizeToFitWidt
    //single_sprg.titleLabel.minimumScaleFactor = 0.5;
    

}
