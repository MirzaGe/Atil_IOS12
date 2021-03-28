//
//  ViewController.swift
//  CatchTheKenny
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    @IBOutlet weak var Kenny1: UIImageView!
    @IBOutlet weak var Kenny2: UIImageView!
    @IBOutlet weak var Kenny3: UIImageView!
    @IBOutlet weak var Kenny4: UIImageView!
    @IBOutlet weak var Kenny5: UIImageView!
    @IBOutlet weak var Kenny6: UIImageView!
    @IBOutlet weak var Kenny7: UIImageView!
    @IBOutlet weak var Kenny8: UIImageView!
    @IBOutlet weak var Kenny9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ScoreLabel.text = "Score: \(score)"
        
        Kenny1.isUserInteractionEnabled = true
        Kenny2.isUserInteractionEnabled = true
        Kenny3.isUserInteractionEnabled = true
        Kenny4.isUserInteractionEnabled = true
        Kenny5.isUserInteractionEnabled = true
        Kenny6.isUserInteractionEnabled = true
        Kenny7.isUserInteractionEnabled = true
        Kenny8.isUserInteractionEnabled = true
        Kenny9.isUserInteractionEnabled = true
        
        
        let recognizer1 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UIGestureRecognizer(target: self, action: #selector(increaseScore))
        
        Kenny1.addGestureRecognizer(recognizer1)
        Kenny2.addGestureRecognizer(recognizer2)
        Kenny3.addGestureRecognizer(recognizer3)
        Kenny4.addGestureRecognizer(recognizer4)
        Kenny5.addGestureRecognizer(recognizer5)
        Kenny6.addGestureRecognizer(recognizer6)
        Kenny7.addGestureRecognizer(recognizer7)
        Kenny8.addGestureRecognizer(recognizer8)
        Kenny9.addGestureRecognizer(recognizer9)
        
    }

    @objc func increaseScore(){
        
        score += 1
        ScoreLabel.text = "Score:  \(score)"
        
    }
}

