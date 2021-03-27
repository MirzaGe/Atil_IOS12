//
//  ViewController.swift
//  GesturesRecognizers
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var MyLabel: UILabel!
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
    
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic() {
        
        if isJames == true {
        imageView.image = UIImage(named: "Lars")
            MyLabel.text  = "Lars Ulrich"
            isJames = false
        } else {
            
            imageView.image = UIImage(named: "James")
                MyLabel.text  = "James Hetfield"
            isJames = true
            
        }
        
        
        
    }

}

