//
//  DetailViewController.swift
//  SimpsonBook
//
//  Created by sherry on 28/03/2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var ImageVIew: UIImageView!
    @IBOutlet weak var NamElabel: UILabel!
    @IBOutlet var JObLabel: UILabel!
    
    var selectedSImpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NamElabel.text = selectedSImpson?.name
        JObLabel.text = selectedSImpson?.job
        ImageVIew.image = selectedSImpson?.image
        

    }
    

    

}
