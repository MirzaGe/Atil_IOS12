//
//  ViewController.swift
//  AlertProject
//
//  Created by sherry on 27/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SignedupClicked(_ sender: Any) {
     
        if userNameText.text == "" {
            makeAlert(TitleInput: "Error", MsgInput: "user not Found")
        }
            
            else if passwordText.text == "" {
                
                makeAlert(TitleInput: "Error", MsgInput: "Password not Found")
                
            }
            else if passwordText.text != password2Text.text {
                
                makeAlert(TitleInput: "Error", MsgInput: "Password do not match")
                
            }
            
        else {
            makeAlert(TitleInput: "Success", MsgInput: "User Ok")
        }
            
    }
    func makeAlert(TitleInput : String, MsgInput: String) {
        
        let alert = UIAlertController(title: TitleInput, message: MsgInput, preferredStyle: UIAlertController.Style.alert)
        
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil )
        
    }
    
}

