//
//  ViewController.swift
//  ObjectwitCode
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(myLabel)
    }


}

