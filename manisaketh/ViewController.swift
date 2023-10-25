//
//  ViewController.swift
//  manisaketh
//
//  Created by pavan on 25/10/23.
//  Copyright © 2023 pavan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.passwordtextfieldoutlet.isSecureTextEntry = true
    }
    
    @IBOutlet weak var usernametextfieldoutlet: UITextField!
  
    
    @IBOutlet weak var passwordtextfieldoutlet: UITextField!
    
    
    
    @IBAction func submitbuttonaction(_ sender: Any) {
        
        if usernametextfieldoutlet.text! == "admin" && passwordtextfieldoutlet.text! == "admin123"{
            self.performSegue(withIdentifier: "mainpagesegue", sender: Any?.self)
        }
        else{
            let action = UIAlertController(title: "Warning", message: "username or password is wrong", preferredStyle: .alert)
            action.addAction(UIAlertAction(title: "RESET", style: .destructive, handler: {action in self.buttonreset()}))
            action.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: nil))
            self.present(action,animated: true,completion: nil )
            
            
        }
        
    }
    
    func buttonreset(){
        usernametextfieldoutlet.text = ""
        passwordtextfieldoutlet.text = ""
    }
    
    
}

