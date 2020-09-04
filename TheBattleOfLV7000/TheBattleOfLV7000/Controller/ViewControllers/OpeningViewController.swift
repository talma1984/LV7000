//
//  OpeningViewController.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase
import FirebaseFirestore

class OpeningViewController: UIViewController  {
    
    
    let ref  = Database.database().reference()
    var uName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.portrait)
        setupDelegate()
    }
    
    func setupDelegate(){
        for v in view.subviews{
            if let textField = v as? UITextField{
                textField.delegate = self
            }
        }
    }
    
    @IBOutlet weak var errLabel: UILabel!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    @IBAction func playButton(_ sender: UIButton) {
        
        // Validate the fields
        let error = validateFields()
        
        if error != nil {
            
            // There's something wrong with the fields, show error message
            showError(error!)
        }
        else {
            
            // Create cleaned versions of the data
            let user = userName.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = userEmail.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let UPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Create the user
            Auth.auth().createUser(withEmail: email, password: UPassword) { (result, err) in
                
                // Check for errors
                if err != nil {
                    
                    // There was an error creating the user
                    self.showError("Error creating user")
                }
                else {
                    
                    // User was created successfully, now store the username and
                    
                    
                    let db = Firestore.firestore()
                    
                    db.collection("users").addDocument(data: ["username":user,  "uid": result!.user.uid ]) { (error) in
                        
                        
                        
                        
                        if error != nil {
                            // Show error message
                            self.showError("Error saving user data")
                        }
                    }
                    
                   
                    if let name = self.userName.text{
                        UserDefaults.standard.set(name, forKey: "uName")
                        self.uName = name
                    }
                    self.createDataBase()
                    self.performSegue(withIdentifier: "MainMenuSegue", sender: self)
                }
            }
        }
    }
    
    
    func showError(_ message:String) {
        
        
        errLabel.alpha = 1
        errLabel.text = message
    }
    
    func createDataBase(){

        self.ref.child("users").child(String(describing: uName)).setValue(["Wins" : 0,"Losts" : 0, "Averege" : 1.1, "Rank" :"Private", "World" : 0,"Friends" : 0, "country" : "no country"])
    }
    
    func validateFields() -> String? {
        
        // Check that all fields are filled in
        if userName.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            userEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
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
