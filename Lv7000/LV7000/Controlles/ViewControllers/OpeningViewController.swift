//
//  OpeningViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit
import FirebaseDatabase


class OpeningViewController: UIViewController  {
    
    
    let ref  = Database.database().reference()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.portrait)
        
        
        
        
        
        // to make the ref silent
        print(ref)
        setupDelegate()
        setDataBaseRefrenses()
        
    }
    
    func setupDelegate(){
        for v in view.subviews{
            if let textField = v as? UITextField{
                textField.delegate = self
            }
        }
    }
    
    func setDataBaseRefrenses(){
        ref.child("User/Username").setValue("\(String(describing: userName))")
        ref.child("User/Averege:").setValue(0)
        ref.child("User/Password").setValue("\(String(describing: password))")
        ref.child("User/Email").setValue("\(String(describing: userEmail))")
        ref.child("User/Wins").setValue("\(0)")
        ref.child("User/Averege:").setValue(0)
        ref.child("User/Rank").setValue("Private")
        
    }
    
//    func checkPassAndUssername(str: String) -> Bool {
//
//        return false
//    }
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBAction func playButton(_ sender: UIButton) {
        
        if  (userName.text != nil) && (password.text != nil) && (userEmail.text != nil){
//             ref.child("User/Username").setValue("\(String(describing: userName))") =  userName.text
            print("full blown")
        }else {
            let alert = UIAlertController(title: "Field Empty", message: " One or more of the fields above is empty, pless fill them." , preferredStyle: UIAlertController.Style.alert)
                // add an action (button)
                alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
                //show the alert
                self.present(alert, animated: true, completion: nil)
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
            //need to add check if user name is free
           // checkPassAndUssername(str: String)
            textField.resignFirstResponder()//
            password.becomeFirstResponder()//TF2 will respond immediately after TF1 resign.
            
            //need to add check if password is free
            // checkPassAndUssername(str: String)
        } else if textField == password  {
            textField.resignFirstResponder()
            userEmail.becomeFirstResponder()//TF3 will respond first
        } else if textField == userEmail {
            textField.resignFirstResponder()
        }
        return true
    }
}



///// database helpfull stuff

/// set sata

//ref.child("User/Username").setValue("itzik")
//ref.childByAutoId().setValue(["Username":"Tom","Rank":"Private","Wins":7,"Email":"tak@email","Averege":0])


//retrive data
//        ref.child("User").observeSingleEvent(of: .value)
//        {(snapshot) in
//            let user = snapshot.value as? [String:Any]
//            print(user as Any)
//   }
