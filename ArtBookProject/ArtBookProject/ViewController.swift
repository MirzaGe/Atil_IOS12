//
//  ViewController.swift
//  ArtBookProject
//
//  Created by sherry on 29/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    }

    @objc func addButtonClicked() {
        performSegue(withIdentifier: "ToDetailsVC", sender: nil)
    }

}

