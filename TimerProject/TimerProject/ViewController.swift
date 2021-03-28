//
//  ViewController.swift
//  TimerProject
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        print("Button Clicked")
    }
    
}

