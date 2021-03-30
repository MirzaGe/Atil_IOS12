//
//  DetailsVC.swift
//  ArtBookProject
//
//  Created by sherry on 29/03/2021.
//

import UIKit
import CoreData


class DetailsVC: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var Imageview: UIImageView!

    @IBAction func nameText(_ sender: Any) {
    }
    
    @IBAction func artistText(_ sender: Any) {
    }
    
    @IBAction func yearText(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // REcognizers
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hidekeyboard))
        view.addGestureRecognizer(gestureRecognizer)
        
        
        Imageview.isUserInteractionEnabled =  true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        Imageview.addGestureRecognizer(imageTapRecognizer)
        
    }
    
    @objc func selectImage () {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        Imageview.image = info [.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func hidekeyboard() {
        view.endEditing(true)
        
    }
    

    @IBAction func SaveButtonCllicked(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newPainting = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        
        newPainting.setValue(nameText(Any) , forKey: "name")
        newPainting.setValue(artistText(<#T##sender: Any##Any#>), forKey: <#T##String#>)
        
    }
    

}
