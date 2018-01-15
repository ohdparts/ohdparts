
import UIKit

class _e_ViewController: UIViewController {

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
    @IBOutlet weak var over_25_switch: UISwitch!
    @IBOutlet weak var door_width: UILabel!
  
    
    
    var labeltext1 = String()
    var labeltext2 = String()
    var labeltext3 = String()
    var labeltext4 = String()
    var labeltext5 = String()
    var labeltext6 = String()
    var labeltext7 = String()
    var labeltext8 = String()
    var labeltext9 = String()
    var labeltext10 = String()
    var width = String()
    var height = String()
    var weight = String()
    var hi_lift = Double()
    var hi_lift_factor = Int()
    var High_MA = Double()
    var Rev_of_Spiral = Double()
    var Flat_MA = Double()
    var Circ_of_Flat = Double()
    var drum_width = Double()
    var cable_len_rule = String()
    var door_height_factor = Double()
    var max_width = Int()
    var currentValue = Int()
    var max_height = Int()
    var min_height = Int()
    var currentValue1 = Int()
    var currentValue2 = Int()
    var max_weight = Int()
    
    @IBOutlet weak var slider_label: UITextField!
    @IBOutlet weak var slider_outlet: UISlider!
    @IBOutlet weak var slider1_label: UITextField!
    @IBOutlet weak var slider2_label: UITextField!
    @IBOutlet weak var slider2_outlet: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        label1.text = labeltext1
        label2.text = labeltext2
        label3.text = labeltext3
        label4.text = labeltext4
        label5.text = labeltext5
        label6.text = labeltext6
        label7.text = labeltext7
        label8.text = labeltext8
        label9.text = labeltext9
        label10.text = labeltext10
        
        slider_label.text = "0ft 0in"
        width = "0"
        slider1_label.text = "0ft 0in"
        height = "0"
        slider2_label.text = "0lbs"
        weight = "0"
        hi_lift = Double(labeltext4)!
        hi_lift_factor = 0
        High_MA = 0
        Rev_of_Spiral = 0
        Flat_MA = 0
        Circ_of_Flat = 0
        drum_width = 0
        door_height_factor = 0
        max_width = 300
        currentValue = 0
        currentValue1 = 0
        currentValue2 = 0
        min_height = 36
     //self.door_width.numberOfLines = 2
     //self.door_width.titleLabel?.numberOfLines = 1
        

        

    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

    @IBAction func over_25_switch(_ sender: UISwitch) {
        if over_25_switch.isOn {
            max_width = 1200
            self.slider_outlet.maximumValue  = Float(max_width)
            self.slider_outlet.minimumValue  = 36
            slider_label.text = "0ft 0in"
            self.slider_outlet.value = 10
            width = "0"}
            
        else {
            max_width = 240
            self.slider_outlet.maximumValue  = Float(max_width)
            self.slider_outlet.minimumValue  = 36
            slider_label.text = "0ft 0in"
            self.slider_outlet.value = 5
            width = "0"}
        }
    
    // width slider
    @IBAction func slider(_ sender: UISlider) {
        currentValue = Int(sender.value)
        
        // set min & max values based on drum selection
       
        
            self.slider_outlet.maximumValue  = Float(max_width)
            self.slider_outlet.minimumValue  = 36
        
        var width_ft_calc = floor(Double(currentValue/12))
        var width_in_calc1 = Double(currentValue)/12
        
        var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
        
        slider_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in"
        
        width = "\(currentValue)"
        
    }
    @IBAction func slider_plus(_ sender: UIButton) {
        if currentValue < max_width {
            currentValue = currentValue + 1
            var width_ft_calc = floor(Double(currentValue/12))
            var width_in_calc1 = Double(currentValue)/12
            
            var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
            
            slider_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in"
            
            width = "\(currentValue)"
            slider_outlet.value = Float(currentValue)
            
        }
    }
    
    @IBAction func slider_neg(_ sender: UIButton) {
        if currentValue > 36 {
            currentValue = currentValue - 1
            var width_ft_calc = floor(Double(currentValue/12))
            var width_in_calc1 = Double(currentValue)/12
            
            var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
            
            slider_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in"
            
            width = "\(currentValue)"
            slider_outlet.value = Float(currentValue)
            
        }
    }
    
    // turns hieght slider vertical
    @IBOutlet weak var verticalSlider: UISlider!{
        didSet{
            verticalSlider.transform = CGAffineTransform(rotationAngle: CGFloat(-M_PI_2))
        }
    }

    @IBAction func slider1_plus(_ sender: UIButton) {
        if currentValue1 < max_height {
            currentValue1 = currentValue1 + 1
            
            if labeltext5 == "APCO 850-11"   {
                var VL_High_MA_1 = ["","1.471","1.588","1.697","1.7995","1.8964","1.9885","2.0766","2.1611","2.2424","2.3209","2.3968","2.4704","2.5418","2.6113","2.679","2.745","2.8095","2.8725","2.9342","2.9946","3.0538","3.1119","3.1689","3.2249","3.28","3.3341","3.3874","3.4398","3.4915","3.5424","3.5926","3.6421","3.6909","3.7391","3.7867","3.8337","3.8801","3.926","3.9713","4.0162","4.0605","4.1044","4.1478","4.1907","4.1907"]
                door_height_factor = round((Double(currentValue1) + 1.5) / 3)
                High_MA = Double(VL_High_MA_1[Int(door_height_factor)])!
            }
            
            if labeltext5 == "APCO 1100-18"  {
                var VL_High_MA_2 = ["","4.2332","4.2753","4.317","4.3583","4.3991","4.4397","4.4798","4.5196","4.559","4.5981","4.6369","4.6754","4.7135","4.7514","4.7889","4.8261","4.8631","4.8998","4.9362","4.9723","5.0082","5.0438","5.0792","5.1192","5.1492","5.1839","5.2183","5.2525","5.2525"]
                door_height_factor = round((Double((currentValue1) - 133) + 2) / 3)
                High_MA = Double(VL_High_MA_2[Int(door_height_factor)])!
                }
            
            if labeltext5 == "APCO 1350-28"   {
                var VL_High_MA_3 = ["","4.368","4.4492","4.529","4.6074","4.6845","4.7603","4.8349","4.9084","4.9809","5.0522","5.1226","5.1921","5.2606","5.3282","5.395","5.461","5.5262","5.5906","5.6543","5.7173","5.7796","5.8412","5.9022","5.9625","6.0223","6.0815","6.1401","6.1981","6.2556","6.3126","6.3691","6.4251","6.4806","6.4806"]

                door_height_factor = round((Double((currentValue1) - 138) + 3) / 6)
                High_MA = Double(VL_High_MA_3[Int(door_height_factor)])!
                         }
            
            var width_ft_calc = floor(Double(currentValue1/12))
            var width_in_calc1 = Double(currentValue1)/12
            
            var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
            slider1_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in (\(currentValue1)in)"
            verticalSlider.value = Float(currentValue1)
            height = "\(currentValue1)"
        }
    }
    @IBAction func slider1_neg(_ sender: UIButton) {
        if currentValue1 > min_height {
            currentValue1 = currentValue1 - 1
            
            if labeltext5 == "APCO 850-11"   {
                var VL_High_MA_1 = ["","1.471","1.588","1.697","1.7995","1.8964","1.9885","2.0766","2.1611","2.2424","2.3209","2.3968","2.4704","2.5418","2.6113","2.679","2.745","2.8095","2.8725","2.9342","2.9946","3.0538","3.1119","3.1689","3.2249","3.28","3.3341","3.3874","3.4398","3.4915","3.5424","3.5926","3.6421","3.6909","3.7391","3.7867","3.8337","3.8801","3.926","3.9713","4.0162","4.0605","4.1044","4.1478","4.1907","4.1907"]
                door_height_factor = round((Double(currentValue1) + 1.5) / 3)
                High_MA = Double(VL_High_MA_1[Int(door_height_factor)])!
            }
            
            if labeltext5 == "APCO 1100-18"  {
                var VL_High_MA_2 = ["","4.2332","4.2753","4.317","4.3583","4.3991","4.4397","4.4798","4.5196","4.559","4.5981","4.6369","4.6754","4.7135","4.7514","4.7889","4.8261","4.8631","4.8998","4.9362","4.9723","5.0082","5.0438","5.0792","5.1192","5.1492","5.1839","5.2183","5.2525","5.2525"]
                door_height_factor = round((Double((currentValue1) - 133) + 2) / 3)
                High_MA = Double(VL_High_MA_2[Int(door_height_factor)])!
            }
            
            if labeltext5 == "APCO 1350-28"   {
                var VL_High_MA_3 = ["","4.368","4.4492","4.529","4.6074","4.6845","4.7603","4.8349","4.9084","4.9809","5.0522","5.1226","5.1921","5.2606","5.3282","5.395","5.461","5.5262","5.5906","5.6543","5.7173","5.7796","5.8412","5.9022","5.9625","6.0223","6.0815","6.1401","6.1981","6.2556","6.3126","6.3691","6.4251","6.4806","6.4806"]
                
                door_height_factor = round((Double((currentValue1) - 138) + 3) / 6)
                High_MA = Double(VL_High_MA_3[Int(door_height_factor)])!
            }
            
            var width_ft_calc = floor(Double(currentValue1/12))
            var width_in_calc1 = Double(currentValue1)/12
            
            var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
            slider1_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in (\(currentValue1))in"
            verticalSlider.value = Float(currentValue1)
            height = "\(currentValue1)"
        }
    }
    
    
    // height slider
    @IBAction func slider1(_ sender: UISlider) {
        currentValue1 = Int(sender.value)
        height = "\(currentValue1)"
        
        if labeltext5 == "APCO 400-8" {
            self.verticalSlider.maximumValue  = 99
            self.verticalSlider.minimumValue  = 36
            max_height = 99
            
            High_MA = 2.275
            Flat_MA = 2.063
            Circ_of_Flat = 12.959
            drum_width = 1.875
            cable_len_rule = "Floor to Shaft Center + 8in."
        }
        
        if labeltext5 == "APCO 400-12" {
            self.verticalSlider.maximumValue  = 147
            self.verticalSlider.minimumValue  = 36
            max_height = 147
            
            High_MA = 2.293
            Flat_MA = 2.078
            Circ_of_Flat = 13.056
            drum_width = 2.685
            cable_len_rule = "Floor to Shaft Center + 8in."
        }
        
        if labeltext5 == "APCO 5280-18" {
            self.verticalSlider.maximumValue  = 217
            self.verticalSlider.minimumValue  = 36
            max_height = 217
            
            High_MA = 2.936
            Flat_MA = 2.719
            Circ_of_Flat = 17.08
            drum_width = 3.375
            cable_len_rule = "Floor to Shaft Center + 10in."
        }
        
        if labeltext5 == "APCO 800-32" {
            self.verticalSlider.maximumValue  = 384
            self.verticalSlider.minimumValue  = 36
            max_height = 384
            
            High_MA = 4.3125
            Flat_MA = 4.125
            Circ_of_Flat = 25.92
            drum_width = 5.3125
            cable_len_rule = "Floor to Shaft Center + 14in."
        }
        
        if labeltext5 == "APCO 400-54" {
            self.verticalSlider.maximumValue  = 174
            self.verticalSlider.minimumValue  = 36
            max_height = 174
            
            var Hi_High_MA_1 = ["","2.1131","2.162","2.2098","2.2567","2.3025","2.3475","2.3916","2.435","2.4775","2.5194","2.5694","2.6011","2.641","2.6803","2.719","2.7572","2.7948","2.832"]
            var Hi_Rev_of_Spiral_1 = ["","0.2287","0.452","0.6705","0.8843","1.0937","1.2991","1.5006","1.6984","1.8928","2.0839","2.2719","2.4569","2.6391","2.8185","2.9954","3.1698","3.3418","3.5115"]
            //per Brett -  factor hi-lift amount up when selecting the M.A.
            hi_lift_factor = Int(round((hi_lift + 0.5) / 3)) //door_height_factor
            High_MA = Double(Hi_High_MA_1[hi_lift_factor])!
            Rev_of_Spiral = Double(Hi_Rev_of_Spiral_1[hi_lift_factor])!
            Flat_MA = 2.063
            Circ_of_Flat = 12.959
            drum_width = 2.875
            cable_len_rule = "Floor to Shaft Center + 63in. minus Hi-Lift"
        }
        
        if labeltext5 == "APCO 5250-54"  {
            self.verticalSlider.maximumValue  = 234
            self.verticalSlider.minimumValue  = 36
            max_height = 234
            
            var Hi_High_MA_2 = ["","2.7731","2.8264","2.8787","2.9301","2.9806","3.0302","3.0791","3.1272","3.1745","3.2212","3.2672","3.3125","3.3573","3.4014","3.445","3.4881","3.5306","3.5726","3.5726"]
            var Hi_Rev_of_Spiral_2 = ["","0.1739","0.3444","0.5118","0.6762","0.8377","0.9966","1.1529","1.3068","1.4583","1.6076","1.7548","1.8999","2.0431","2.1844","2.3239","2.4616","2.5977","2.7321","2.7321"]

           hi_lift_factor = Int(round((hi_lift + 0.5) / 3))
           High_MA = Double(Hi_High_MA_2[hi_lift_factor])!
           Rev_of_Spiral = Double(Hi_Rev_of_Spiral_2[hi_lift_factor])!
           Flat_MA = 2.7188
           Circ_of_Flat = 17.08
           drum_width = 3.625
           cable_len_rule = "Floor to Shaft Center + 66in. minus Hi-Lift"
        }
        
        if labeltext5 == "APCO 5750-120"  {
            self.verticalSlider.maximumValue  = 264
            self.verticalSlider.minimumValue  = 36
            max_height = 264
            
            var Hi_High_MA_3 = ["","3.0186","3.0677","3.1159","3.1635","3.2103","3.2564","3.3019","3.3468","3.3911","3.4348","3.478","3.5206","3.5627","3.6044","3.6455","3.6862","3.7265","3.7663","3.8057","3.8447","3.8834","3.9216","3.9595","3.997","4.0341","4.0709","4.1074","4.1436","4.1795","4.215","4.2503","4.2852","4.3199","4.3543","4.3884","4.4223","4.4559,4.4893","4.5224","4.5553","4.5553"]
            var Hi_Rev_of_Spiral_3 = ["","0.1595","0.3164","0.4708","0.6229","0.7727","0.9204","1.066","1.2096","1.3513","1.4912","1.6294","1.7658","1.9006","2.0339","2.1656","2.2958","2.4247","2.5521","2.6782","2.803","2.9266","3.0489","3.1701","3.2901","3.409","3.5269","3.6436","3.7593","3.8741","3.9878","4.1006","4.2125","4.3235","4.4336","4.5428","4.6512","4.7587","4.8655","4.9715","5.0767","5.0767"]
            
            hi_lift_factor = Int(round((hi_lift + 0.5) / 3))
            High_MA = Double(Hi_High_MA_3[hi_lift_factor])!
            Rev_of_Spiral = Double(Hi_Rev_of_Spiral_3[hi_lift_factor])!
            Flat_MA = 2.9688
            Circ_of_Flat = 18.65
            drum_width = 3.625
            cable_len_rule = "Floor to Shaft Center + 134in. minus Hi-Lift"
        }
        
        if labeltext5 == "APCO 6375-164"  {
            self.verticalSlider.maximumValue  = 393
            self.verticalSlider.minimumValue  = 36
            max_height = 393
            
            var Hi_High_MA_4 = ["","3.3619","3.4105","3.4585","3.5058","3.5525","3.5985","3.644","3.6889","3.7333","3.7772","3.8206","3.8634","3.9058","3.9478","3.9893","4.0304","4.071","4.1113","4.1512","4.1907","4.2298","4.2686","4.307","4.3451","4.3828","4.4202","4.4573","4.4941","4.5306","4.5669","4.6028","4.6384","4.6738","4.7089","4.7438","4.7784","4.8127","4.8468","4.8807","4.9143","4.9477","4.9809","5.0139","5.0466","5.0792","5.1115","5.1436","5.1755","5.2073","5.2388","5.2702","5.3013","5.3323","5.3631","5.3631"]
            var Hi_Rev_of_Spiral_4 = ["","0.1431","0.2841","0.4231","0.5602","0.6955","0.8291","0.9609","1.0911","1.2198","1.3469","1.4726","1.5969","1.7198","1.8414","1.9617","2.0808","2.1986","2.3154","2.4309","2.5454","2.6588","2.7712","2.8825","2.9929","3.1023","3.2108","3.3184","3.425","3.5308","3.6358","3.74","3.8433","3.9458","4.0476","4.1486","4.2489","4.3485","4.4473","4.5455","4.643","4.7398","4.836","4.9315","5.0265","5.1208","5.2145","5.3076","5.4001","5.4921","5.5835","5.6744","5.7647","5.8545","5.9438","5.9438"]
            
            hi_lift_factor = Int(round((hi_lift + 0.5) / 3))
            High_MA = Double(Hi_High_MA_4[hi_lift_factor])!
            Rev_of_Spiral = Double(Hi_Rev_of_Spiral_4[hi_lift_factor])!
            Flat_MA = 3.3125
            Circ_of_Flat = 20.813
            drum_width = 6
            cable_len_rule = "Floor to Shaft Center + 181in. minus Hi-Lift"
            
        }
        
        if labeltext5 == "APCO 850-11"   {
            self.verticalSlider.maximumValue  = 132
            self.verticalSlider.minimumValue  = 36
            max_height = 132
            
           var VL_High_MA_1 = ["","1.471","1.588","1.697","1.7995","1.8964","1.9885","2.0766","2.1611","2.2424","2.3209","2.3968","2.4704","2.5418","2.6113","2.679","2.745","2.8095","2.8725","2.9342","2.9946","3.0538","3.1119","3.1689","3.2249","3.28","3.3341","3.3874","3.4398","3.4915","3.5424","3.5926","3.6421","3.6909","3.7391","3.7867","3.8337","3.8801","3.926","3.9713","4.0162","4.0605","4.1044","4.1478","4.1907","4.1907"]
            
            door_height_factor = round((Double(currentValue1) + 1.5) / 3)
            High_MA = Double(VL_High_MA_1[Int(door_height_factor)])!
            drum_width = 3.125
            cable_len_rule = "Floor to Shaft Center + 141.5in. minus door height"
        }
        
        if labeltext5 == "APCO 1100-18"  {
            self.verticalSlider.maximumValue  = 216
            self.verticalSlider.minimumValue  = 135
            max_height = 216
            min_height = 135
            
            var VL_High_MA_2 = ["","4.2332","4.2753","4.317","4.3583","4.3991","4.4397","4.4798","4.5196","4.559","4.5981","4.6369","4.6754","4.7135","4.7514","4.7889","4.8261","4.8631","4.8998","4.9362","4.9723","5.0082","5.0438","5.0792","5.1192","5.1492","5.1839","5.2183","5.2525","5.2525"]
            
            //this prevents the index from erroring out of range
            if currentValue1 < 135 {
                currentValue1 = 135
            }
            door_height_factor = round((Double((currentValue1) - 133) + 2) / 3)
            High_MA = Double(VL_High_MA_2[Int(door_height_factor)])!
            drum_width = 4
            cable_len_rule = "Floor to Shaft Center + 235in. minus door height"
        }
        
        if labeltext5 == "APCO 1350-28"   {
            self.verticalSlider.maximumValue  = 335
            self.verticalSlider.minimumValue  = 144
            max_height = 335
            min_height = 144
            
            var VL_High_MA_3 = ["","4.368","4.4492","4.529","4.6074","4.6845","4.7603","4.8349","4.9084","4.9809","5.0522","5.1226","5.1921","5.2606","5.3282","5.395","5.461","5.5262","5.5906","5.6543","5.7173","5.7796","5.8412","5.9022","5.9625","6.0223","6.0815","6.1401","6.1981","6.2556","6.3126","6.3691","6.4251","6.4806","6.4806"]
            
            //this prevents the index from erroring out of range
            if currentValue1 < 144 {
                currentValue1 = 144
            }
            door_height_factor = round((Double((currentValue1) - 138) + 3) / 6)
            High_MA = Double(VL_High_MA_3[Int(door_height_factor)])!
            drum_width = 6
            cable_len_rule = "Floor to Shaft Center + 325in. minus door height"
        }
        
        var width_ft_calc = floor(Double(currentValue1/12))
        var width_in_calc1 = Double(currentValue1)/12
        
        var width_in_calc2 = round((width_in_calc1 - width_ft_calc)*12)
        slider1_label.text = "\(Int(width_ft_calc))ft \(Int(width_in_calc2))in (\(currentValue1))in"
        height = "\(currentValue1)"
    }

      // weight slider
    @IBAction func weight_slider(_ sender: UISlider) {
       currentValue2 = Int(sender.value)
       
        if labeltext5 == "APCO 400-8" {
            self.slider2_outlet.maximumValue = 530
            self.slider2_outlet.minimumValue = 0
            max_weight = 530
        }
        if labeltext5 == "APCO 400-12" {
            self.slider2_outlet.maximumValue = 750
            self.slider2_outlet.minimumValue = 0
            max_weight = 750
        }
        if labeltext5 == "APCO 5280-18" {
            self.slider2_outlet.maximumValue = 1000
            self.slider2_outlet.minimumValue = 0
            max_weight = 1000
        }
        if labeltext5 == "APCO 800-32" {
            self.slider2_outlet.maximumValue = 2000
            self.slider2_outlet.minimumValue = 0
            max_weight = 2000
        }
        if labeltext5 == "APCO 400-54" {
            self.slider2_outlet.maximumValue = 550
            self.slider2_outlet.minimumValue = 0
            max_weight = 550
        }
        if labeltext5 == "APCO 5250-54"  {
            self.slider2_outlet.maximumValue = 1000
            self.slider2_outlet.minimumValue = 0
            max_weight = 1000
        }
        if labeltext5 == "APCO 5750-120"  {
            self.slider2_outlet.maximumValue = 1000
            self.slider2_outlet.minimumValue = 0
            max_weight = 1000
        }
        if labeltext5 == "APCO 6375-164"   {
            self.slider2_outlet.maximumValue = 1600
            self.slider2_outlet.minimumValue = 0
            max_weight = 1600
        }
        if labeltext5 == "APCO 850-11"    {
            self.slider2_outlet.maximumValue = 850
            self.slider2_outlet.minimumValue = 0
            max_weight = 850
        }
        if labeltext5 == "APCO 1100-18"    {
            self.slider2_outlet.maximumValue = 1000
            self.slider2_outlet.minimumValue = 0
            max_weight = 1000
        }
        if labeltext5 == "APCO 1350-28"     {
            self.slider2_outlet.maximumValue = 2000
            self.slider2_outlet.minimumValue = 0
            max_weight = 2000
        }
        slider2_label.text = "\(currentValue2)lbs"
        weight = "\(currentValue2)"
    }

    @IBAction func slider2_plus(_ sender: UIButton) {
        if currentValue2 < max_weight {
           currentValue2 = currentValue2 + 1
        slider2_label.text = "\(currentValue2)lbs"
        weight = "\(currentValue2)"
        slider2_outlet.value = Float(currentValue2)
        }
    }
    
    @IBAction func slider2_neg(_ sender: UIButton) {
        if currentValue2 > 0  {
            currentValue2 = currentValue2 - 1
            slider2_label.text = "\(currentValue2)lbs"
            weight = "\(currentValue2)"
            slider2_outlet.value = Float(currentValue2)
        }
    }
    
    @IBAction func next(_ sender: Any) {
        if labeltext2 == "duplex" {
    self.performSegue(withIdentifier: "segue1", sender: nil)
        }
        else{
    self.performSegue(withIdentifier: "segue", sender: nil)
            }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if labeltext2 == "duplex" {
            var destview1: _h_ViewController = segue.destination as! _h_ViewController
            destview1.wire_type = labeltext1
            
            var destview2: _h_ViewController = segue.destination as! _h_ViewController
            destview2.assy_type = labeltext2
            
            var destview3: _h_ViewController = segue.destination as! _h_ViewController
            destview3.Lift_Type = labeltext3
            
            var destview4: _h_ViewController = segue.destination as! _h_ViewController
            destview4.hi_lift = Double(labeltext4)!
            
            var destview5: _h_ViewController = segue.destination as! _h_ViewController
            destview5.Drum = labeltext5
            
            var destview6: _h_ViewController = segue.destination as! _h_ViewController
            destview6.Trk_Factor = Double(labeltext6)!
            
            var destview7: _h_ViewController = segue.destination as! _h_ViewController
            destview7.angle_sin = Double(labeltext7)!
            
            var destview8: _h_ViewController = segue.destination as! _h_ViewController
            destview8.height = Double(height)!
            
            var destview9: _h_ViewController = segue.destination as! _h_ViewController
            destview9.weight = Double(weight)!
            
            var destview10: _h_ViewController = segue.destination as! _h_ViewController
            destview10.width = Double(width)!
            
            var destview11: _h_ViewController = segue.destination as! _h_ViewController
            destview11.High_MA = (High_MA)
            
            var destview12: _h_ViewController = segue.destination as! _h_ViewController
            destview12.Rev_of_Spiral = (Rev_of_Spiral)
            
            var destview13: _h_ViewController = segue.destination as! _h_ViewController
            destview13.Flat_MA = (Flat_MA)
            
            var destview14: _h_ViewController = segue.destination as! _h_ViewController
            destview14.Circ_of_Flat = (Circ_of_Flat)
            
            var destview15: _h_ViewController = segue.destination as! _h_ViewController
            destview15.drum_width = (drum_width)
            
            var destview16: _h_ViewController = segue.destination as! _h_ViewController
            destview16.cable_len_rule = cable_len_rule
        }
        else{
        var destview1: _g_ViewController = segue.destination as! _g_ViewController
        destview1.wire_type = labeltext1
        
        var destview2: _g_ViewController = segue.destination as! _g_ViewController
        destview2.assy_type = labeltext2
        
        var destview3: _g_ViewController = segue.destination as! _g_ViewController
        destview3.Lift_Type = labeltext3
        
        var destview4: _g_ViewController = segue.destination as! _g_ViewController
        destview4.hi_lift = Double(labeltext4)!
        
        var destview5: _g_ViewController = segue.destination as! _g_ViewController
        destview5.Drum = labeltext5
        
        var destview6: _g_ViewController = segue.destination as! _g_ViewController
        destview6.Trk_Factor = Double(labeltext6)!
        
        var destview7: _g_ViewController = segue.destination as! _g_ViewController
        destview7.angle_sin = Double(labeltext7)!
        
        var destview8: _g_ViewController = segue.destination as! _g_ViewController
        destview8.height = Double(height)!
        
        var destview9: _g_ViewController = segue.destination as! _g_ViewController
        destview9.weight = Double(weight)!
        
        var destview10: _g_ViewController = segue.destination as! _g_ViewController
        destview10.width = Double(width)!
        
        var destview11: _g_ViewController = segue.destination as! _g_ViewController
        destview11.High_MA = (High_MA)
        
        var destview12: _g_ViewController = segue.destination as! _g_ViewController
        destview12.Rev_of_Spiral = (Rev_of_Spiral)
        
        var destview13: _g_ViewController = segue.destination as! _g_ViewController
        destview13.Flat_MA = (Flat_MA)
        
        var destview14: _g_ViewController = segue.destination as! _g_ViewController
        destview14.Circ_of_Flat = (Circ_of_Flat)
        
        var destview15: _g_ViewController = segue.destination as! _g_ViewController
        destview15.drum_width = (drum_width)
        
        var destview16: _g_ViewController = segue.destination as! _g_ViewController
        destview16.cable_len_rule = cable_len_rule
        }
    }
}

