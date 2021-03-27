//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var BirthdayTextField: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SaveClicked(_ sender: Any) {
        
        NameLabel.text = "Name: \(NameTextField.text!)"
        BirthdayLabel.text = "Birthday: \(BirthdayTextField.text! )"
        
    }
    

}

