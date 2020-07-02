//
//  SelectMapViewController.swift
//  Lv7000
//
//  Created by Mac on 14/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class SelectMapViewController: ChooseViewController {
    
    @IBOutlet weak var chooseMapTextField: UITextField!
    
    var mapImage = UIImageView()
    
    let maps = ["Strangerson Island", "Siberian Tiger", "Welcome to the Jungle", "Lawrence of Arabia"]
    var selectedImage: UIImage!
    var mapSends: String?
    var selectedMaps = "Strangerson Island"
    var sendMaps: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapsPicker()
        createToolBar()
        setMapsPicture(map: "Strangerson Island")
    }
    
    //set the picker view
    func mapsPicker(){
        let mapsPikers = UIPickerView()
        mapsPikers.delegate = self
        mapsPikers.backgroundColor = .black
        mapsPikers.sizeToFit()
        chooseMapTextField.inputView = mapsPikers
    }
    
    //the toolbar whith the done button
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.barTintColor = .black
        toolBar.tintColor = .systemTeal
        toolBar.frame = CGRect(x: 0 ,y: 120 ,width: 200 , height: 60)
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ChooseArmyViewController.dismissKeyBoard))
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        changeImage()
        chooseMapTextField.inputAccessoryView = toolBar
        
    }
    
    //map image attribiuts
    func setMapsPicture(map: String){
        
        let CourentMap = map
        mapImage.image = UIImage(named: CourentMap)
        mapImage.contentMode = .scaleToFill
        view.addSubview(mapImage)
        mapImage.translatesAutoresizingMaskIntoConstraints = false
        mapImage.heightAnchor.constraint(equalToConstant: 140).isActive = true
        mapImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -280).isActive = true
        mapImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        mapImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
    }
    
    //change the image of the map
    func changeImage(){
        switch selectedMaps {
        case "Strangerson Island":
            setMapsPicture(map: "Strangerson Island")
            selectedImage = UIImage(named: "Strangerson Island")
            mapSends = "Strangerson Island"
        case "Siberian Tiger":
            setMapsPicture(map: "Siberian Tiger")
            selectedImage = UIImage(named: "Siberian Tiger")
            mapSends = "Siberian Tiger"
        case "Welcome to the Jungle":
            setMapsPicture(map: "Welcome to the Jungle")
            selectedImage = UIImage(named: "Welcome to the Jungle")
            mapSends = "Welcome to the Jungle"
        case "Lawrence of Arabia":
            setMapsPicture(map: "Lawrence of Arabia")
            selectedImage = UIImage(named: "Lawrence of Arabia")
            mapSends = "Lawrence of Arabia"
        
        default:
            setMapsPicture(map: "Strangerson Island")
            selectedImage = UIImage(named: "Strangerson Island")
            mapSends = "Strangerson Island"
        }
    }
    
    //dismiss the keyboard
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    //send information to creat game
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MakeGameSegue" {
            let selectedMapVC = segue.destination as! CreatGameViewController
            selectedMapVC.sendMapInfo = (selectedMaps) as String
        }
    }
}
extension SelectMapViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maps.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return maps[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMaps = maps[row]
        chooseMapTextField.text = selectedMaps
        changeImage()
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
        label.text = maps[row]
        
        return label
    }
}

