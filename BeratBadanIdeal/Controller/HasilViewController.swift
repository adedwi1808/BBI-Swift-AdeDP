//
//  HasilViewController.swift
//  BeratBadanIdeal
//
//  Created by Ade Dwi Prayitno on 05/09/21.
//

import UIKit

class HasilViewController: UIViewController {
    var bbi: String?
    @IBOutlet weak var bbiLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bbiLabel.text = String("\(bbi!) Kg")
        backButton.layer.cornerRadius = 12
    }
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
