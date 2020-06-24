//
//  OpeningViewController.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseDatabase

class OpeningViewController: UIViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let ref = Database.database().reference()
        //         ref = Database.database().reference()
        setupDelegate()
    }
    
    func setupDelegate(){
        for v in view.subviews{
            if let textField = v as? UITextField{
                textField.delegate = self
            }
        }
    }
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBAction func playButton(_ sender: UIButton) {
        
        if let name = userName.text{
            UserDefaults.standard.set(name, forKey: "uName")
        }
    }
    
    @IBAction func termsAndConditions(_ sender: UITextField) {
    }
    
    @IBAction func Privacy(_ sender: UITextField) {
    }
}

//jump to next textfield when push enter
extension OpeningViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userName {
            textField.resignFirstResponder()//
            password.becomeFirstResponder()//TF2 will respond immediately after TF1 resign.
        } else if textField == password  {
            textField.resignFirstResponder()
            userEmail.becomeFirstResponder()//TF3 will respond first
        } else if textField == userEmail {
            textField.resignFirstResponder()
        }
        return true
    }
}
