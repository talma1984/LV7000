//
//  GameViewController.swift
//  Lv7000
//
//  Created by Tal Marom on 31/03/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

//set base view of  the game
class BaseGameViewController: UIViewController {
    
    //scrollview stuff
    var scrollImageView: UIImageView!
    var scrollView: UIScrollView!
    
    //time stuff
    var timeTextField = UITextField()
    var timeButton = UIButton()
    var selectedTimebuttons: String?
    let informationDate = UIButton()
    var turnTextField = UITextField()
    
    //money stuff
    var uranium = 300
    var water = 3000
    var lvBit = 10000
    var titanium = 300
    var moneyButton = UIButton()
    let moneyTextField = UITextField()
    let bitTextField = UITextField()
    let waterTextField = UITextField()
    let uraniumTextField = UITextField()
    let titaniumTextField = UITextField()
    var selectedMoneyButton: String?
    let bitImage = UIImageView()
    let waterImage = UIImageView()
    let uraniumImage = UIImageView()
    let titaniumImage = UIImageView()
    let informationMoney = UIButton()
    
    //turnes stuff
    var gameTurn = 73
    var days = 1
    let endTurnImage = UIImageView()
    let endTurn = UIButton()
    let endTurnClosed = UIButton()
    var selectedTurnbuttons: String?
    
    //set game stuff
    let gameImage = UIImageView()
    var selectedGamebuttons: String?
    let gameButtonClosed = UIButton()
    let topImage = UIImageView()
    let buldingButton = UIButton()
    let armyButton = UIButton()
    let techButton = UIButton()
    let specialButton = UIButton()
    var selectedTableViewButtons: String?
    let iformationGame = UIButton()
    let buldingGameTableView = UITableView()
    let armyGameTableView = UITableView()
    let techGameTableView = UITableView()
    let specialGameTableView = UITableView()
    let buldingsTableViewCell = UITableViewCell()
    let armyTableViewCell = UITableViewCell()
    let techTableViewCell = UITableViewCell()
    
    //xtras tuff
    var smallImages = UIImageView()
    let xtraTopFrame = UIImageView()
    let xtraTopFrame2 = UIImageView()
    var selectedInformationButton: String?
    
    //teritorry
    var teritory = 0
    var teritorryImage = UIImageView()
    var teritorryImageNow: String?

    //get stuff from items array
    let buldings = ItemsArray.fetchBuildings()
    let island = ItemsArray.fetchIsland()
    let gobi = ItemsArray.fetchGobi()
    let amazonas = ItemsArray.fetchAmazonas()
    let sahara = ItemsArray.fetchSahara()
    var playerTeritorrys = ItemsArray.fetchPlayerOneTeritorry()
    let armys = ItemsArray.fetchArmy()
    let techs = ItemsArray.fetchTech()
    let specials = ItemsArray.fetchSpecial()
    
    //set array to later fiil in
    var playerOne = [CustumTeritorryData(title: "String", image: "String", size: 3, numberOfBuldings: 6, resurse: "String", x: 3, y: 4, width: 5, height: 6)].self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getTheTeritorrys()
        setScollerView()
        setZoomScale(for: scrollView.bounds.size)
        scrollView.zoomScale = scrollView.maximumZoomScale
        scrollView.zoomScale = scrollView.minimumZoomScale
        setTimerefrense()
        xtraImages()
        setMoneyfrense()
        setGameReference()
        endTurnButton()
    }
    
    // all the buttons functions
    
    //open and closed the time button
    @IBAction func timeButtonClicked(_ sender: UIButton) {
        switch selectedTimebuttons {
        case "TimeButtonOpen":
            timebuttonClosed()
        case "TimeButtonClosed":
            timebuttonOpend()
        default:
            print("defulttt")
        }
    }
    
    //open and closed the money button
    @IBAction func moneyButtonClicked(_ sender: UIButton) {
        switch selectedMoneyButton {
        case "MoneyButtonOpen":
            moneyBClosed()
        case "MoneyButtonClosed":
            moneyBOpend()
        default:
            print("defulttt")
        }
    }
    
     //open and closed the game button
    @IBAction func gameButtonClicked(_ sender: UIButton) {
        switch selectedGamebuttons {
        case "GameButtonOpen":
            gameBClosed()
        case "GameButtonClosed":
            gameBOpend()
        default:
            print("defulttt")
        }
    }
    
    //get the alerts from few buttons and send back alert
    @IBAction func alert(recognaizer: MyTapGesture){
        switch recognaizer.stringValue {
        case "dateButton":
            let alert = UIAlertController(title: "how many turnes", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        case "moneyButton":
            let alert = UIAlertController(title: "this is my money", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
            // show the alert
            self.present(alert, animated: true, completion: nil)
        default:
            print("alert defoult")
        }
    }
    
    //open the tabelview that push and closed the others
    @IBAction func actionButtonClicked(recognaizer: MyTapGesture){
        switch recognaizer.actionButton {
        case "buldingButton":
            selectedTableViewButtons = "buldingButton"
            buldingButton.setBackgroundImage(UIImage(named: "BuldingOn"), for: UIControl.State.normal)
            armyButton.setBackgroundImage(UIImage(named: "ArmyOff"), for: UIControl.State.normal)
            techButton.setBackgroundImage(UIImage(named: "TeckOff"), for: UIControl.State.normal)
            specialButton.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
            buldingButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
            armyButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            techButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            specialButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            buldingButton.setTitleColor(.systemGray3, for: .normal)
            armyButton.setTitleColor(.systemGreen, for: .normal)
            techButton.setTitleColor(.systemGreen, for: .normal)
            specialButton.setTitleColor(.systemBlue, for: .normal)
            setGameTableView(button: "bulding")
        case "armyButton":
            selectedTableViewButtons = "armyButton"
            buldingButton.setBackgroundImage(UIImage(named: "BuldingOff"), for: UIControl.State.normal)
            armyButton.setBackgroundImage(UIImage(named: "ArmyOn"), for: UIControl.State.normal)
            techButton.setBackgroundImage(UIImage(named: "TeckOff"), for: UIControl.State.normal)
            specialButton.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
            armyButton.setTitleColor(.systemGray2, for: .normal)
            buldingButton.setTitleColor(.systemBlue, for: .normal)
            techButton.setTitleColor(.systemGreen, for: .normal)
            specialButton.setTitleColor(.systemBlue, for: .normal)
            armyButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
            techButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            buldingButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size:7)
            specialButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            setGameTableView(button: "army")
        case "techButton":
            selectedTableViewButtons = "techButton"
            buldingButton.setBackgroundImage(UIImage(named: "BuldingOff"), for: UIControl.State.normal)
            armyButton.setBackgroundImage(UIImage(named: "ArmyOff"), for: UIControl.State.normal)
            techButton.setBackgroundImage(UIImage(named: "TeckOn"), for: UIControl.State.normal)
            specialButton.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
            techButton.setTitleColor(.systemGray2, for: .normal)
            buldingButton.setTitleColor(.systemBlue, for: .normal)
            armyButton.setTitleColor(.systemGreen, for: .normal)
            specialButton.setTitleColor(.systemBlue, for: .normal)
            armyButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            techButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
            buldingButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size:7)
            specialButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            setGameTableView(button: "tech")
        case "specialButton":
            selectedTableViewButtons = "specialButton"
            buldingButton.setBackgroundImage(UIImage(named: "BuldingOff"), for: UIControl.State.normal)
            armyButton.setBackgroundImage(UIImage(named: "ArmyOff"), for: UIControl.State.normal)
            techButton.setBackgroundImage(UIImage(named: "TeckOff"), for: UIControl.State.normal)
            specialButton.setBackgroundImage(UIImage(named: "SpecialOn"), for: UIControl.State.normal)
            specialButton.setTitleColor(.systemGray3, for: .normal)
            buldingButton.setTitleColor(.systemBlue, for: .normal)
            armyButton.setTitleColor(.systemGreen, for: .normal)
            techButton.setTitleColor(.systemGreen, for: .normal)
            armyButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            techButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            buldingButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size:7)
            specialButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
            setGameTableView(button: "special")
        default:
            print("random from action button")
        }
    }
    
    //open and closed the turn button
    @IBAction func closedTurnButtonClicked(_ sender: UIButton) {
        switch selectedTurnbuttons {
        case "EndButtonOpen":
            endTurnClosedImage()
        case "EndButtonClosed":
            endTurnOpendImage()
        default:
            print("defulttt")
        }
    }
    
    //edit what happens when turn end
    @IBAction func endTurnPressed(_ sender: UIButton){
    }
    
    // set the ZoomScale of the back map
    func setZoomScale(for scrollViewSize: CGSize) {
        
        let imageSize = scrollImageView.bounds.size
        let widthScale = scrollViewSize.width /  imageSize.width
        let heightScale = scrollViewSize.height / imageSize.height
        let minimumScale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = minimumScale
        scrollView.maximumZoomScale = 3.0
    }
    
    //make the back map scroollerbale andzoom capbilatis
    func setScollerView(){
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.backgroundColor = .black
        scrollImageView.frame = view.bounds
        scrollImageView.contentMode = .scaleAspectFill
        scrollImageView.clipsToBounds = true
        scrollView.delegate = self
        scrollView.addSubview(scrollImageView)
        view.sendSubviewToBack(scrollImageView)
        view.addSubview(scrollView)
    }
    
    //set the time refrenses and buttons atribiuts(on the top right of the screen)
    func setTimerefrense(){
        timeButton.contentMode = .scaleAspectFill
        timeButton.setBackgroundImage(UIImage(named: "TimeButtonOpen"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonOpen"
        view.addSubview(timeButton)
        timeButton.frame = CGRect(x: 405, y: 0, width: 258, height: 70)
        timeButton.addTarget(self, action: #selector(timeButtonClicked), for: .touchUpInside)
        timeButton.addSubview(turnTextField)
        turnTextField.frame = CGRect(x: 80, y: 13, width: 200, height: 35)
        turnTextField.textAlignment = NSTextAlignment.left
        turnTextField.backgroundColor = .clear
        turnTextField.textColor = UIColor.systemTeal
        turnTextField.font = UIFont(name: "SofachromeRg-Italic", size: 10)
        turnTextField.text = "Turn: \(gameTurn)"
        turnTextField.isUserInteractionEnabled = false
        timeButton.addSubview(timeTextField)
        timeTextField.frame = CGRect(x: -7, y: -2, width: 260, height: 30)
        timeTextField.textAlignment = NSTextAlignment.center
        timeTextField.backgroundColor = .clear
        timeTextField.textColor = UIColor.systemTeal
        timeTextField.font = UIFont(name: "SofachromeRg-Italic", size: 9)
        timeTextField.text = " \(time())"
        timeTextField.isUserInteractionEnabled = false
        informationDate.setBackgroundImage(UIImage(named: "Information"), for: UIControl.State.normal)
        informationDate.contentMode = .scaleAspectFill
        view.addSubview(informationDate)
        informationDate.frame = CGRect(x: 632, y: 37, width: 15, height: 15)
        let tapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        tapped.stringValue = "dateButton"
        informationDate.addGestureRecognizer(tapped)
    }
    
    //set the time refrense as apused to the number of turnes played
    func time()-> String{
        
       
        var weeks = 1
        var month = 1
        
        days = gameTurn % 8
        weeks  =  gameTurn / 8
        month = gameTurn / 24
        
        if days == 0 {
            days = 8
            weeks -= 1
        }
        if gameTurn % 24 == 0 {
            month -= 1
        }
        
        weeks += 1
        month += 1
        return "Day:  \(days)  Week:  \(weeks)  Month:  \(month)"
    }
    
    //time button open attribiuts
    func timebuttonOpend(){
        timeButton.setBackgroundImage(UIImage(named: "TimeButtonOpen"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonOpen"
        timeButton.frame = CGRect(x: 405, y: 0, width: 258, height: 70)
        timeTextField.isHidden = false
        informationDate.isHidden = false
    }
    
    //time button closed attribiuts
    func timebuttonClosed(){
        timeButton.setBackgroundImage(UIImage(named: "TimeButtonClosed"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonClosed"
        timeButton.frame = CGRect(x: 405, y: 0, width: 258, height: 25)
        informationDate.isHidden = true
        timeTextField.isHidden = true
    }
    
    //set the money refrenses and buttons atribiuts(on the top left of the screen)
    func setMoneyfrense(){
        moneyButton.contentMode = .scaleAspectFill
        moneyButton.setBackgroundImage(UIImage(named: "MoneyButton"), for: UIControl.State.normal)
        selectedMoneyButton = "MoneyButtonOpen"
        view.addSubview(moneyButton)
        moneyButton.frame = CGRect(x: 2, y: 0, width: 301, height: 70)
        moneyButton.addTarget(self, action: #selector(moneyButtonClicked), for: .touchUpInside)
        moneyTextField.frame = CGRect(x: 15, y: -10 , width: 311, height: 40)
        moneyTextField.textAlignment = NSTextAlignment.left
        moneyTextField.backgroundColor = .clear
        moneyTextField.textColor = UIColor.black
        moneyTextField.font = UIFont(name: "SofachromeRg-Italic", size: 12)
        moneyTextField.textColor = . systemGray6
        moneyTextField.text = "  BIT:      H2O:       TI:       URA:"
        moneyTextField.isUserInteractionEnabled = false
        moneyButton.addSubview(moneyTextField)
        bitTextField.frame = CGRect(x: 40, y: 15 , width: 311, height: 40)
        bitTextField.textAlignment = NSTextAlignment.left
        bitTextField.backgroundColor = .clear
        bitTextField.font = UIFont(name: "SofachromeRg-Italic", size: 9)
        bitTextField.isUserInteractionEnabled = false
        bitTextField.text = "\(lvBit)"
        moneyButton.addSubview(bitTextField)
        bitTextField.textColor = .systemGray5
        waterTextField.frame = CGRect(x: 115, y: 15 , width: 311, height: 40)
        waterTextField.textAlignment = NSTextAlignment.left
        waterTextField.backgroundColor = .clear
        waterTextField.font = UIFont(name: "SofachromeRg-Italic", size: 9)
        waterTextField.isUserInteractionEnabled = false
        waterTextField.text = "\(water)"
        moneyButton.addSubview(waterTextField)
        waterTextField.isUserInteractionEnabled = false
        waterTextField.textColor = .systemGray5
        titaniumTextField.frame = CGRect(x: 180, y: 15 , width: 311, height: 40)
        titaniumTextField.textAlignment = NSTextAlignment.left
        titaniumTextField.backgroundColor = .clear
        titaniumTextField.font = UIFont(name: "SofachromeRg-Italic", size: 10)
        titaniumTextField.isUserInteractionEnabled = false
        titaniumTextField.text = "\(titanium) "
        moneyButton.addSubview(titaniumTextField)
        titaniumTextField.isUserInteractionEnabled = false
        titaniumTextField.textColor = .systemGray5
        uraniumTextField.frame = CGRect(x: 245, y: 15 , width: 311, height: 40)
        uraniumTextField.textAlignment = NSTextAlignment.left
        uraniumTextField.backgroundColor = .clear
        uraniumTextField.font = UIFont(name: "SofachromeRg-Italic", size: 10)
        uraniumTextField.isUserInteractionEnabled = false
        uraniumTextField.text = "\(uranium) "
        moneyButton.addSubview(uraniumTextField)
        uraniumTextField.isUserInteractionEnabled = false
        uraniumTextField.textColor = .systemGray5
        bitImage.image = UIImage(named: "Money")
        waterImage.image = UIImage(named: "Water")
        titaniumImage.image = UIImage(named: "Titanium")
        uraniumImage.image = UIImage(named: "Uranium")
        bitImage.frame = CGRect(x: 15, y: 20, width: 25, height: 25)
        waterImage.frame = CGRect(x: 90, y: 20, width: 25, height: 25)
        titaniumImage.frame = CGRect(x: 155, y: 20, width: 25, height: 25)
        uraniumImage.frame = CGRect(x: 220, y: 20, width: 25, height: 25)
        bitImage.contentMode = .scaleAspectFill
        waterImage.contentMode = .scaleAspectFill
        titaniumImage.contentMode = .scaleAspectFill
        uraniumImage.contentMode = .scaleAspectFill
        moneyButton.addSubview(bitImage)
        moneyButton.addSubview(waterImage)
        moneyButton.addSubview(titaniumImage)
        moneyButton.addSubview(uraniumImage)
        
        informationMoney.setBackgroundImage(UIImage(named: "Information"), for: UIControl.State.normal)
        informationMoney.contentMode = .scaleAspectFill
        view.addSubview(informationMoney)
        informationMoney.frame = CGRect(x: 271, y: 45, width: 15, height: 15)
        let tapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        tapped.stringValue = "moneyButton"
        informationMoney.addGestureRecognizer(tapped)
    }
    
    //money button open attribiuts
    func moneyBOpend(){
        
        moneyButton.setBackgroundImage(UIImage(named: "MoneyButton"), for: UIControl.State.normal)
        selectedMoneyButton = "MoneyButtonOpen"
        moneyButton.frame = CGRect(x: 2, y: 0, width: 301, height: 70)
        moneyTextField.isHidden = false
        bitTextField.isHidden = false
        bitImage.isHidden = false
        waterImage.isHidden = false
        titaniumImage.isHidden = false
        uraniumImage.isHidden = false
        waterTextField.isHidden = false
        uraniumTextField.isHidden = false
        titaniumTextField.isHidden = false
        informationMoney.isHidden = false
    }
    
    //money button closed attribiuts
    func moneyBClosed(){
        
        moneyButton.setBackgroundImage(UIImage(named: "MoneyButtonClosed"), for: UIControl.State.normal)
        selectedMoneyButton = "MoneyButtonClosed"
        moneyButton.frame = CGRect(x: 2, y: 0, width: 298, height: 25)
        moneyTextField.isHidden = true
        bitImage.isHidden = true
        titaniumImage.isHidden = true
        waterImage.isHidden = true
        uraniumImage.isHidden = true
        informationMoney.isHidden = true
        bitTextField.isHidden = true
        waterTextField.isHidden = true
        uraniumTextField.isHidden = true
        titaniumTextField.isHidden = true
    }
    
    //set the game refrenses and buttons atribiuts(on the buttom of the screeb)
    func setGameReference(){
        
        view.addSubview(gameImage)
        gameImage.image = UIImage(named: "BuldingAndSolgiers")
        selectedGamebuttons = "GameButtonOpen"
        gameImage.contentMode = .scaleToFill
        gameImage.frame = CGRect(x: 7, y: 225, width: 655, height: 150)
        gameImage.isUserInteractionEnabled = true
        gameImage.clipsToBounds = true
        view.addSubview(gameButtonClosed)
        gameButtonClosed.setBackgroundImage(UIImage(named: "GameClosed"), for: UIControl.State.normal)
        gameButtonClosed.addTarget(self, action: #selector(gameButtonClicked), for: .touchUpInside)
        gameButtonClosed.frame = CGRect(x: 42, y: 276, width: 25, height: 61)
        topImage.image = UIImage(named: "Top")
        topImage.contentMode = .scaleToFill
        topImage.frame = CGRect(x: 294, y: 10, width: 320, height: 35)
        gameImage.addSubview(topImage)
        topImage.isUserInteractionEnabled = true
        actionButtons()
    }
    
    //controll the table views on the 4 buttons biuld, army ,special and tech
    func actionButtons(){
        topImage.addSubview(buldingButton)
        buldingButton.frame = CGRect(x: 28, y: 16, width: 66, height: 16)
        buldingButton.contentMode = .scaleAspectFill
        buldingButton.setBackgroundImage(UIImage(named: "BuldingOff"), for: UIControl.State.normal)
        let tappedBuilding = MyTapGesture.init(target: self, action:#selector(self.actionButtonClicked(recognaizer:)))
        tappedBuilding.actionButton = "buldingButton"
        buldingButton.addGestureRecognizer(tappedBuilding)
        buldingButton.setTitle("Bulding", for: .normal)
        buldingButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        buldingButton.setTitleColor(.systemBlue, for: .normal)
        topImage.addSubview(armyButton)
        armyButton.frame = CGRect(x: 94, y: 16, width: 66, height: 16)
        armyButton.setBackgroundImage(UIImage(named: "ArmyOff"), for: UIControl.State.normal)
        armyButton.contentMode = .scaleAspectFill
        let tappedArmy = MyTapGesture.init(target: self, action:#selector(self.actionButtonClicked(recognaizer:)))
        tappedArmy.actionButton = "armyButton"
        armyButton.addGestureRecognizer(tappedArmy)
        armyButton.setTitle("Army", for: .normal)
        armyButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        armyButton.setTitleColor(.systemGreen, for: .normal)
        topImage.addSubview(techButton)
        techButton.frame = CGRect(x: 160, y: 16, width: 65, height: 16)
        techButton.setBackgroundImage(UIImage(named: "TeckOff"), for: UIControl.State.normal)
        techButton.contentMode = .scaleAspectFill
        let tappedTech = MyTapGesture.init(target: self, action:#selector(self.actionButtonClicked(recognaizer:)))
        tappedTech.actionButton = "techButton"
        techButton.addGestureRecognizer(tappedTech)
        techButton.setTitle("Tech", for: .normal)
        techButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        techButton.setTitleColor(.systemGreen, for: .normal)
        topImage.addSubview(specialButton)
        specialButton.frame = CGRect(x: 226, y: 16, width: 66, height: 16)
        specialButton.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
        specialButton.contentMode = .scaleAspectFill
        let tappedSpecial = MyTapGesture.init(target: self, action:#selector(self.actionButtonClicked(recognaizer:)))
        tappedSpecial.actionButton = "specialButton"
        specialButton.addGestureRecognizer(tappedSpecial)
        specialButton.setTitle("Special", for: .normal)
        specialButton.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        specialButton.setTitleColor(.systemBlue, for: .normal)
    }
    
    //which buttton was pushed and hide the others
    func setGameTableView(button: String) {
        
        switch button {
        case "bulding":
            buldingGameTableView.backgroundColor = UIColor.clear
            buldingGameTableView.delegate = self
            buldingGameTableView.dataSource = self
            gameImage.addSubview(buldingGameTableView)
            buldingGameTableView.backgroundColor = UIColor.clear
            buldingGameTableView.frame = CGRect(x: 310, y: 45, width: 300, height: 100)
            buldingGameTableView.register(BuldingTableViewCell.self,  forCellReuseIdentifier: "BuldingCell")
            buldingGameTableView.isHidden = false
            armyGameTableView.isHidden = true
            techGameTableView.isHidden = true
            specialGameTableView.isHidden = true
        case "army":
            armyGameTableView.backgroundColor = UIColor.clear
            armyGameTableView.delegate = self
            armyGameTableView.dataSource = self
            gameImage.addSubview(armyGameTableView)
            armyGameTableView.backgroundColor = UIColor.clear
            armyGameTableView.frame = CGRect(x: 310, y: 45, width: 300, height: 100)
            armyGameTableView.register(ArmyTableViewCell.self,  forCellReuseIdentifier: "armyCell")
            buldingGameTableView.isHidden = true
            armyGameTableView.isHidden = false
            techGameTableView.isHidden = true
            specialGameTableView.isHidden = true
        case "tech":
            techGameTableView.backgroundColor = UIColor.clear
            techGameTableView.delegate = self
            techGameTableView.dataSource = self
            gameImage.addSubview(techGameTableView)
            techGameTableView.backgroundColor = UIColor.clear
            techGameTableView.frame = CGRect(x: 310, y: 45, width: 300, height: 100)
            techGameTableView.register(TechTableViewCell.self,  forCellReuseIdentifier: "techCell")
            buldingGameTableView.isHidden = true
            armyGameTableView.isHidden = true
            techGameTableView.isHidden = false
            specialGameTableView.isHidden = true
        case "special":
            specialGameTableView.backgroundColor = UIColor.clear
            specialGameTableView.delegate = self
            specialGameTableView.dataSource = self
            gameImage.addSubview(specialGameTableView)
            specialGameTableView.backgroundColor = UIColor.clear
            specialGameTableView.frame = CGRect(x: 310, y: 45, width: 300, height: 100)
            specialGameTableView.register(SpecialTableViewCell.self,  forCellReuseIdentifier: "spechialCell")
            buldingGameTableView.isHidden = true
            armyGameTableView.isHidden = true
            techGameTableView.isHidden = true
            specialGameTableView.isHidden = false
        default:
            print("no table view set")
        }
    }
    
    //game button open attribiuts
    func gameBOpend(){
        
        gameImage.image = UIImage(named: "BuldingAndSolgiers")
        gameImage.clipsToBounds = true
        selectedGamebuttons = "GameButtonOpen"
        gameImage.frame = CGRect(x: 7, y: 225, width: 655, height: 150)
        gameButtonClosed.setBackgroundImage(UIImage(named: "GameClosed"), for: UIControl.State.normal)
        gameButtonClosed.frame = CGRect(x: 42, y: 276, width: 25, height: 61)
        buldingGameTableView.isHidden = false
        topImage.isHidden = false
    }
    
    //money button closed attribiuts
    func gameBClosed(){
        gameImage.image = UIImage(named: "BuldingAndSolgiersClosed")
        selectedGamebuttons = "GameButtonClosed"
        gameImage.frame = CGRect(x: 7, y: 337, width: 650, height: 40)
        gameButtonClosed.setBackgroundImage(UIImage(named: "GameOpen"), for: UIControl.State.normal)
        gameButtonClosed.frame = CGRect(x: 50, y: 347, width: 45, height: 28)
        buldingGameTableView.isHidden = true
        topImage.isHidden = true
        
    }
    
    //xtra frame in the top of the screen
    func xtraImages(){
        view.addSubview(xtraTopFrame)
        xtraTopFrame.image = UIImage(named: "XtraFrame")
        xtraTopFrame.contentMode = .scaleToFill
        xtraTopFrame.frame = CGRect(x: 297, y: -1, width: 55, height: 20)
        view.addSubview(xtraTopFrame2)
        xtraTopFrame2.image = UIImage(named: "XtraFrame2")
        xtraTopFrame2.contentMode = .scaleToFill
        xtraTopFrame2.frame = CGRect(x: 352, y: -5, width: 55, height: 20)
    }
    
    //make the game only on landskape mode
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeLeft
    }
    
    private func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.landscapeLeft
    }
    
    private func shouldAutorotate() -> Bool {
        return true
    }
    
    //and set all the turnview refrenses(on the right side of the screen)
    func endTurnButton(){
        
        switch days {
        case 1:
            endTurnImage.image = UIImage(named: "EndButton1")
        case 2:
            endTurnImage.image = UIImage(named: "EndButton2")
        case 3:
            endTurnImage.image = UIImage(named: "EndButton3")
        case 4:
            endTurnImage.image = UIImage(named: "EndButton4")
        case 5:
            endTurnImage.image = UIImage(named: "EndButton5")
        case 6:
            endTurnImage.image = UIImage(named: "EndButton6")
        case 7:
            endTurnImage.image = UIImage(named: "EndButton7")
        case 8:
            endTurnImage.image = UIImage(named: "EndButton8")
        default:
            print("problom in turns")
        }
        
        view.addSubview(endTurnImage)
        endTurnImage.contentMode = .scaleToFill
        endTurnImage.frame = CGRect(x: 565, y: 68, width: 100, height: 100)
        selectedTurnbuttons = "EndButtonOpen"
        endTurnImage.isUserInteractionEnabled = true
        endTurnImage.addSubview(endTurn)
        endTurn.setBackgroundImage(UIImage(named: "button1"), for: UIControl.State.normal)
        endTurn.setBackgroundImage(UIImage(named: "button1On"), for: UIControl.State.highlighted)
        endTurn.frame = CGRect(x:35,y: 35,width: 30, height: 30)
        endTurn.contentMode = .scaleToFill
        endTurn.addTarget(self, action: #selector(endTurnPressed), for: .touchUpInside)
        endTurnImage.addSubview(endTurnClosed)
        endTurnClosed.setBackgroundImage(UIImage(named:"MoveRight" ), for: UIControl.State.normal)
        endTurnClosed.frame = CGRect(x:41,y: 83 ,width: 18, height: 18)
        endTurnClosed.contentMode = .scaleToFill
        endTurnClosed.layer.cornerRadius = 0.5 * endTurnClosed.bounds.size.width
        endTurnClosed.clipsToBounds = true
        endTurnClosed.isUserInteractionEnabled = true
        endTurnClosed.addTarget(self, action: #selector(closedTurnButtonClicked), for: .touchUpInside)
    }
    
   //turn button open attribiuts
    func endTurnOpendImage(){
        switch days {
        case 1:
            endTurnImage.image = UIImage(named: "EndButton1")
        case 2:
            endTurnImage.image = UIImage(named: "EndButton2")
        case 3:
            endTurnImage.image = UIImage(named: "EndButton3")
        case 4:
            endTurnImage.image = UIImage(named: "EndButton4")
        case 5:
            endTurnImage.image = UIImage(named: "EndButton5")
        case 6:
            endTurnImage.image = UIImage(named: "EndButton6")
        case 7:
            endTurnImage.image = UIImage(named: "EndButton7")
        case 8:
            endTurnImage.image = UIImage(named: "EndButton8")
        default:
            print("problom in turns")
        }
        selectedTurnbuttons = "EndButtonOpen"
        endTurnImage.frame = CGRect(x: 565, y: 68, width: 100, height: 100)
        endTurnClosed.setBackgroundImage(UIImage(named:"MoveRight" ), for: UIControl.State.normal)
        endTurnClosed.frame = CGRect(x:41,y: 83 ,width: 18, height: 18)
    }
    
    //turn button closed attribiuts
    func endTurnClosedImage(){
        
        switch days {
        case 1:
            endTurnImage.image = UIImage(named: "EndButtonClosed1")
        case 2:
            endTurnImage.image = UIImage(named: "EndButtonClosed2")
        case 3:
            endTurnImage.image = UIImage(named: "EndButtonClosed3")
        case 4:
            endTurnImage.image = UIImage(named: "EndButtonClosed4")
        case 5:
            endTurnImage.image = UIImage(named: "EndButtonClosed5")
        case 6:
            endTurnImage.image = UIImage(named: "EndButtonClosed6")
        case 7:
            endTurnImage.image = UIImage(named: "EndButtonClosed7")
        case 8:
            endTurnImage.image = UIImage(named: "EndButtonClosed8")
        default:
            print("problom in turns")
        }
        endTurnImage.frame = CGRect(x: 635, y: 68, width: 30, height: 100)
        selectedTurnbuttons = "EndButtonClosed"
        endTurnClosed.frame = CGRect(x:7,y: 83 ,width: 18, height: 18)
        endTurnClosed.setBackgroundImage(UIImage(named:"MoveLeft" ), for: UIControl.State.normal)
    }
    
    //set the image of the turnview by which day of the week
    func turnImageChanged(gameTurns: Int) -> String{
        switch days {
        case 1:
            return "1"
        case 2:
            return  "2"
        case 3:
            return  "3"
        case 4:
            return "4"
        case 5:
            return  "5"
        case 6:
            return "6"
        case 7:
            return  "7"
        case 8:
            return "8"
            
        default:
            print("no turn landed")
        }
        return "1"
    }
    
    //get the teritorrys from map array that the player will start the game whith
       func getTheTeritorrys() {
           
           playerTeritorrys.removeAll()
           let number = Int.random(in: 0 ..< island.count-2)
           playerTeritorrys.append(island[number])
           playerTeritorrys.append(island[number + 1])
           playerTeritorrys.append(island[number + 2])
           playerOne.removeAll()
           playerOne.append(contentsOf: playerTeritorrys)
       }
    
    //class that helps to know which button was pushed
    class MyTapGesture: UITapGestureRecognizer{
        var stringValue = "passed information from button"
        var leftrightString = "passed information from game button"
        var actionButton = "passed information from action button"
        
    }
}

extension BaseGameViewController: UIScrollViewDelegate{
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        
        return scrollImageView
    }
}

extension BaseGameViewController: UITableViewDelegate, UITableViewDataSource {
    
    //deturmed which table view to activate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch selectedTableViewButtons {
        case "buldingButton":
            return ItemsArray.fetchBuildings().count
        case "armyButton":
            return armys.count
        case "techButton":
            return techs.count
        case "specialButton":
            return specials.count
        default:
            print("random from action button")
        }
        return 0
    }
    
    //get information to each cell thats on
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch selectedTableViewButtons {
        case "buldingButton":
            let BuldingCell = tableView.dequeueReusableCell(withIdentifier: "BuldingCell", for: indexPath) as! BuldingTableViewCell
            BuldingCell.backgroundColor = .clear
            let bulding = buldings[indexPath.row]
            BuldingCell.data = bulding
            BuldingCell.BuldingCellDelegate = self
            BuldingCell.index = indexPath
            BuldingCell.BiuldBuldingCellDelegate = self
            return BuldingCell
            
        case "armyButton":
            let armyCell = tableView.dequeueReusableCell(withIdentifier: "armyCell", for: indexPath) as! ArmyTableViewCell
            armyCell.backgroundColor = .clear
            let army = armys[indexPath.row]
            armyCell.data = army
            armyCell.ArmyCellDelegate = self
            armyCell.index = indexPath
            return armyCell
            
        case "techButton":
            let techCell = tableView.dequeueReusableCell(withIdentifier: "techCell", for: indexPath) as! TechTableViewCell
            techCell.backgroundColor = .clear
            let tech = techs[indexPath.row]
            techCell.data = tech
            techCell.TechCellDelegate = self
            techCell.index = indexPath
            return techCell
            
        case "specialButton":
            let spechialCell = tableView.dequeueReusableCell(withIdentifier: "spechialCell", for: indexPath) as! SpecialTableViewCell
            spechialCell.backgroundColor = .clear
            let special = specials[indexPath.row]
            spechialCell.data = special
            spechialCell.SpechialCellDelegate = self
            spechialCell.index = indexPath
            return spechialCell
            
        default:
            print("random from action button")
        }
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return Cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
//get info from biulding
extension BaseGameViewController: BuldingTableViewProtocol{
    
    func onClickBiuld(index: Int, image: String, price: Int) {
        
        
        let prices = price
        
        
        //check if you have enof money
        if lvBit >= price  {
            lvBit -= prices
            print(lvBit)
            bitTextField.text = "\(lvBit)"
            waterTextField.text = "\(water)"
            titaniumTextField.text = "\(titanium) "
            uraniumTextField.text = "\(uranium) "
            GameViewControler.shared.courentBiulding = "\(image)"
            GameCollectionViewCell.init().CheckAndBiuld(sender: self)
            smallImages.image = UIImage(named: "Usa")
            smallImages.contentMode = .scaleToFill
            smallImages.frame = CGRect(x: 5, y: 2, width:30, height: 16)
            smallImages.clipsToBounds = true
            GameCollectionViewCell.init().NumberOfBuldingsButton1.addSubview(smallImages)
            
        } else {
            let alert = UIAlertController(title: "Insufficient Funds", message: " you need to get more: LVBIT" , preferredStyle: UIAlertController.Style.alert)
            // add an action (button)
            alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
            //show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    func onClickCell(index: Int, alert: String, massage: String) {
        let alert = UIAlertController(title: alert, message: massage, preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

//get info from specialcell
extension BaseGameViewController: SpecialTableViewProtocol{
    
    func onClickSpecialCell(index: Int, alert: String, massage: String) {
        let alert = UIAlertController(title: alert, message: massage, preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        self.present(alert, animated: true, completion: nil)
    }
}

//get info from theccell
extension BaseGameViewController: TechTableViewProtocol{
    func OnClickTechCell(index: Int, alert: String, massage: String){
        let alert = UIAlertController(title: alert, message: massage, preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        
        self.present(alert, animated: true, completion: nil)
    }
}

//get info from armycell
extension BaseGameViewController: ArmyTableViewCProtocol{
    func onClickArmyCell(index: Int, alert: String, massage: String) {
        
        let alert = UIAlertController(title: alert, message: massage, preferredStyle: UIAlertController.Style.alert)
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Got It", style: UIAlertAction.Style.default, handler: nil))
        //show the alert
        
        self.present(alert, animated: true, completion: nil)
        print("\(index)")
    }
}



//more helpfull staff
//buldingButton.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)

// if you want to add inforation on each cell
//    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
//
//        let filterAction = UIContextualAction(style: .normal, title: "FILTER") { (action, view, bool) in
//            print("Swiped to filter")
//        }
//        filterAction.backgroundColor = UIColor.blue
//
//        return UISwipeActionsConfiguration(actions: [filterAction])
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 118
//    }
//insideGameTableView.backgroundView = UIImageView(image: UIImage(named: "output-onlinepngtools"))


