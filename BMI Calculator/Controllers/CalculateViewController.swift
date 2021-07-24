

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var calculateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func rounder (number : Float, decimalPlaces : String) -> Float{
        return Float(String(format: decimalPlaces, number))!
    }
    
    
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue.text =  "\((String(rounder(number: sender.value, decimalPlaces: "%.2f")))) m"
        // print(rounder(number: sender.value, decimalPlaces: "%.4f"))
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue.text = "\(String(Int(sender.value))) kg"
        
        //no need for print debugs
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(h: height, w: weight)
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceText = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //
    }
}

