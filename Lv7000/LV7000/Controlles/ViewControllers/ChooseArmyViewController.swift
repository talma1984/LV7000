//
//  ChooseArmyViewController.swift
//  LV7000
//
//  Created by Mac on 16/07/2020.
//  Copyright © 2020 aurica. All rights reserved.
//

import UIKit

class ChooseArmyViewController: ChooseViewController {
    
    @IBOutlet weak var ChooseArmyTextField: UITextField!
    
    var armyImage = UIImageView()
    let armysPiker = UIPickerView()
    var gameInfo = ["United States","Strangerson Island", 6] as [Any]
    let armys = ["United States", "China", "Russia", "Germany","Iran", "India", "Israel", "United Kingdom", "Japan"]
    
    
    var selectedArmy = "United States"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        armyPicker()
        createToolBar()
        setArmyPicture(army: "Usa")
        
    }
    
    //set the picker view
    func armyPicker(){
        armysPiker.delegate = self
        armysPiker.backgroundColor = .black
        armysPiker.sizeToFit()
        ChooseArmyTextField.inputView = armysPiker
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
        ChooseArmyTextField.inputAccessoryView = toolBar
        
        changeImage()
    }
    
    //armi image attribiuts
    func setArmyPicture(army: String) {
        
        let CourentArmy = army
        armyImage.image = UIImage(named: CourentArmy)
        armyImage.contentMode = .scaleToFill
        view.addSubview(armyImage)
        armyImage.frame = CGRect(x: 40, y: 200, width: 300 ,height: 140 )
    }
    
    //change the image of the army
    func changeImage(){
        switch selectedArmy {
        case "United States":
            setArmyPicture(army: "Usa")
        case "China":
            setArmyPicture(army: "China")
        case "Russia":
            setArmyPicture(army: "Russia")
        case "Germany":
            setArmyPicture(army: "Germany")
        case "Mexico":
            setArmyPicture(army: "Mexico")
        case "Iran":
            setArmyPicture(army: "Iran")
        case "India":
            setArmyPicture(army: "India")
        case "South Africa":
            setArmyPicture(army: "South Africa")
        case "Israel":
            setArmyPicture(army: "Israel")
        case "Japan":
            setArmyPicture(army: "Japan")
        case "United Kingdom":
            setArmyPicture(army: "United Kingdom")
            
        default:
            setArmyPicture(army: "Usa")
        }
    }
    
    //dismiss the keyboard
    @objc func dismissKeyBoard() {
        view.endEditing(true)
    }
    
    //send information to creat game
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "MakeGameSegue" {
            let selectedArmysInfo = segue.destination as! CreatGameViewController
            
            
            selectedArmysInfo.gameInfo[0] = ((selectedArmy as String?)!)
            selectedArmysInfo.gameInfo[1] = (gameInfo[1]) as! String
            selectedArmysInfo.gameInfo[2] = (gameInfo[2]) as! Int
        }
    }
}

extension ChooseArmyViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return armys.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return armys[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        70
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedArmy = armys[row]
        ChooseArmyTextField.text = selectedArmy
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
        label.text = armys[row]
        
        return label
    }
    
}

