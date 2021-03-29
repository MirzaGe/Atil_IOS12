//
//  ViewController.swift
//  LandMarkBook
//
//  Created by sherry on 28/03/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    @IBOutlet weak var TableViEw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableViEw.delegate = self
        TableViEw.dataSource = self
        
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Kremlin")
        landmarkNames.append("stonehange")
        landmarkNames.append("Taj Mahal")
        landmarkNames.append("Wall Of China")
    
        landmarkImages.append(UIImage(named: "colosseum.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "taj mahal.jpg")!)
        landmarkImages.append(UIImage(named: "Wall of China.jpg")!)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
        
    func tableView;?(UITableView, didSelectRowAt: IndexPath){
            performSegue(withIdentifier: "toImageViewController", sender: nil)
        }
    
    


}

