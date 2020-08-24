//
//  ChooseCountryViewController.swift
//  LV7000
//
//  Created by Mac on 28/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ChooseCountryViewController: UIViewController {
    var arr = [String : Any]()
    var countries: [String] = []
    let countryPicker = UIPickerView()
    let backgroundImageView = UIImageView()
    var selectedCountry = "United States"
    let backButton = UIButton()
    let frame = UIImageView()
    let texture = UIImageView()
    var infoArr = [] as [Any]
    var uNam = ""
    var numbersWorldPlayers = 0
    let ref = Database.database().reference()
    @IBOutlet weak var ChooseCountryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AppUtility.lockOrientation(.portrait)
        setBackground()
        setbuttons()
        setContreis()
        SetCountryPicker()
        createToolBar()
        connectFireBase()
    }
    
    @IBAction func doneClicked(){
        
        view.endEditing(true)
        ref.child("users").child("\(uNam)").updateChildValues(["country": "\(selectedCountry)"])
        
        if let av = arr["Averege"] {
            infoArr.append(av)
        }
        if let ra = arr["Rank"] {
            infoArr.append(ra)
        }
        
        if let wo = arr["World"] {
            infoArr.append(wo)
        }
        if let wi = arr["Wins"] {
            infoArr.append(wi)
        }
        if let lo = arr["Losts"] {
            infoArr.append(lo)
        }
        
        infoArr.append(selectedCountry)
        
        if let fr = arr["Friends"] {
            infoArr.append(fr)
        }
        
    }
    func connectFireBase() {
        if let name = UserDefaults.standard.string(forKey: "uName"){
            uNam = name
        }
        ref.child("users").observeSingleEvent(of: .value, with:  { snapshot in
            guard let world = snapshot.value as? [String: Any] else {return}
            for (key,val) in world {
                self.numbersWorldPlayers += 1
                
                if  key == "\(self.uNam )"{
                    self.arr = val as! [String : Any]
                }
            }
        })
    }
    //set the picker view
    func SetCountryPicker(){
        countryPicker.delegate = self
        countryPicker.backgroundColor = .black
        countryPicker.sizeToFit()
        countryPicker.frame = CGRect(x: 0, y: 100, width: 200 , height: 350)
        ChooseCountryTextField.inputView = countryPicker
    }
    
    //the toolbar whith the done button
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.barTintColor = .black
        toolBar.tintColor = .systemTeal
        toolBar.frame = CGRect(x: 0 ,y: 120 ,width: 200 , height: 60)
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClicked))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        ChooseCountryTextField.inputAccessoryView = toolBar
    }
    
    
    //returns to main view
    @objc func buttonClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ProfileSegue", sender: self)
    }
    
    //set the background image
    func setBackground() {
        backgroundImageView.image = UIImage(named: "stars5")
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProfileSegue" {
            
            let profileVc = segue.destination as! ProfileViewController
            
            profileVc.avaregeN = infoArr[0] as? Double
            profileVc.rankStrin = (infoArr[1] as? String)!
            profileVc.worldN = numbersWorldPlayers
            profileVc.winsN = infoArr[3] as? Int
            profileVc.lostN = infoArr[4] as? Int
            profileVc.countryN = infoArr[5] as? String
            profileVc.FriendsN = infoArr[6] as? Int
            profileVc.nameOfUser = uNam
        }
    }
    
    //set the back button
    func setbuttons(){
        view.addSubview(backButton)
        backButton.setImage(UIImage(named:"Done"), for: .normal)
        backButton.contentMode = .scaleToFill
        backButton.frame = CGRect(x: 80, y: 550, width: 230, height: 70)
        backButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    
    func setContreis(){
        
        for code in NSLocale.isoCountryCodes as [String] {
            let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
            let name = NSLocale(localeIdentifier: "en_UK").displayName(forKey: NSLocale.Key.identifier, value: id) ?? "Country not found for code: \(code)"
            countries.append(name)
        }
    }
    
}

extension ChooseCountryViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        30
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCountry = countries[row]
        ChooseCountryTextField.text = selectedCountry
        
    }
    
    //picker view attribiuts
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        
        if let view = view as? UILabel {
            label = view
        } else {
            label = UILabel()
        }
        label.textColor = .systemTeal
        label.textAlignment = .center
        label.font = UIFont(name: "Charter-Italic", size: 24)
        label.text = countries[row]
        
        return label
    }
}

