//
//  ViewController.swift
//  BeratBadanIdeal
//
//  Created by Ade Dwi Prayitno on 05/09/21.
//

import UIKit

class HitungViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var genderSegmenent: UISegmentedControl!
    @IBOutlet weak var countButton: UIButton!
    var gender = "Pria"
    
    var calculatorBeratBadan = CalculatorBeratBadan()
    override func viewDidLoad() {
        super.viewDidLoad()
        countButton.layer.cornerRadius = 12
        
    }

    @IBAction func heightSlided(_ sender: UISlider) {
        let height = String(format:"%.0f",sender.value)
        heightLabel.text = "\(height)cm"
    }
    @IBAction func genderPicked(_ sender: UISegmentedControl) {
        switch genderSegmenent.selectedSegmentIndex
            {
            case 0:
                gender = "Pria"
            case 1:
                gender = "Wanita"
            default:
                break
            }
        
    }
    
    @IBAction func countPressed(_ sender: UIButton) {
        let height = heightSlider.value
        calculatorBeratBadan.calculateBeratBadan(Double(height),gender)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vcTujuan = segue.destination as! HasilViewController
        vcTujuan.bbi = calculatorBeratBadan.getHasil()
    }
}

