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
    var scrollImageView = UIImageView()
    var scrollView: UIScrollView!
    
    //time stuff
    var timeTextField = UITextField()
    var calenderButton = UIButton()
    var selectedTimebuttons: String?
    let informationCalender = UIButton()
    var turnTextField = UITextField()
    
    //bank stuff
    var uranium = 300
    var water = 3000
    var lvBit = 10000
    var titanium = 300
    var soldiers = 60
    
    var bankButton = UIButton()
    
    let bitTextField = UITextField()
    let waterTextField = UITextField()
    let uraniumTextField = UITextField()
    let titaniumTextField = UITextField()
    let troopsTextField = UITextField()
    var selectedBankButton: String?
    let bitButton = UIButton()
    let waterButton = UIButton()
    let uraniumButton = UIButton()
    let titaniumButton = UIButton()
    let troopsButton = UIButton()
    
    
    //turnes stuff
    var gameTurn = 3
    var days = 1
    let endTurnImage = UIImageView()
    let endTurn = UIButton()
    let endTurnClosed = UIButton()
    var selectedTurnbuttons: String?
    let informationTurnButton = UIButton()
    
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
    var selectedInformationButton: String?
    
    // chat\info stuff
    var infoCaht = UIImageView()
    var info = UIButton()
    var chat = UIButton()
    var infoChatClosedButton = UIButton()
    var subjectArmyImage = UIImageView()
    var subjectBiuldingImage = UIImageView()
    var subjectInfo = UITextView()
    var subjectBiuldinInfo = UITextView()
    var subjectArmyInfo = UITextView()
    var selectedInfoChatbuttons: String?
    var informationArmyTitle = UITextView()
    var informationBiildingTitle = UITextView()
    var informationTitle = UITextView()
    var infoArray = ["", "", "", ""]
    
    //teritorry
    var teritory = 0
    
    
    var sendMapInfo: String?
    var sendArmyInfo: String?
    var buildingsArray = [CustumData]()
    var armysArray = [CustumData]()
    var teckArray = [CustumData]()
    var specialArray = [CustumData]()
    
    //get stuff from items array
    let StrangersonIsland = ItemsArray.fetchStrangersonIsland()
    let LawrenceOfArabia = ItemsArray.fetchLawrenceOfArabia()
    let WelcomeToTheJungle = ItemsArray.fetchWelcomeToTheJungle()
    let SiberianTiger = ItemsArray.fetchSiberianTiger()
    var playerTeritorrys = ItemsArray.fetchPlayerOneTeritorry()
    let usaBuldings = ItemsArray.fetchUnitedStatesBuildings()
    let chiBuldings = ItemsArray.fetchChinaBuildings()
    let RussiaBuldings = ItemsArray.fetchRussiaBuildings()
    let gerBuldings = ItemsArray.fetchGermanyBuildings()
    let mexBuldings = ItemsArray.fetchMexicoBuildings()
    let iraBuldings = ItemsArray.fetchIranBuildings()
    let indBuldings = ItemsArray.fetchIndiaBuildings()
    let souBuldings = ItemsArray.fetchSouthAfricasBuildings()
    let isrBuldings = ItemsArray.fetchIsraelBuildings()
    let ukBuldings = ItemsArray.fetchUnitedKingdomBuildings()
    let japBuldings = ItemsArray.fetchJapanBuildings()
    let usaTechs = ItemsArray.UnitedStatesetchTech()
    let chiTechs = ItemsArray.ChinafetchTech()
    let RussiaTechs = ItemsArray.RussiafetchTech()
    let gerTechs = ItemsArray.GermanyfetchTech()
    let mexTechs = ItemsArray.MexicofetchTech()
    let iraTechs = ItemsArray.IranfetchTech()
    let indTechs = ItemsArray.IndiafetchTech()
    let souTechs = ItemsArray.SouthAfricafetchTech()
    let isrTechs = ItemsArray.IsraelfetchTech()
    let ukTechs = ItemsArray.UnitedKingdomfetchTech()
    let japTechs = ItemsArray.JapanfetchTech()
    let usaSpecials = ItemsArray.UnitedStatesfetchSpecial()
    let chiSpecials = ItemsArray.ChinafetchSpecial()
    let RussiaSpecials = ItemsArray.RussiafetchSpecial()
    let gerSpecials = ItemsArray.GermanyfetchSpecial()
    let mexSpecials = ItemsArray.MexicofetchSpecial()
    let iraSpecials = ItemsArray.IranfetchSpecial()
    let indSpecials = ItemsArray.IndiafetchSpecial()
    let souSpecials = ItemsArray.SouthAfricafetchSpecial()
    let isrSpecials = ItemsArray.IsraelfetchSpecial()
    let ukSpecials = ItemsArray.UnitedKingdomfetchSpecial()
    let japSpecials = ItemsArray.JapanfetchSpecial()
    let usaArmys = ItemsArray.UnitedStatesfetchArmy()
    let chiArmys = ItemsArray.ChinafetchArmy()
    let RussiaArmys = ItemsArray.RussiafetchArmy()
    let gerArmys = ItemsArray.GermanyfetchArmy()
    let mexArmys = ItemsArray.MexicofetchArmy()
    let iraArmys = ItemsArray.IranfetchArmy()
    let indArmys = ItemsArray.IndiafetchArmy()
    let souArmys = ItemsArray.SouthAfricafetchArmy()
    let isrArmys = ItemsArray.IsraelfetchArmy()
    let ukArmys = ItemsArray.UnitedKingdomfetchArmy()
    let japArmys = ItemsArray.JapanfetchArmy()
 
    //set array to later fiil in
    var playerOne = [CustumTeritorryData(title: "String", image: "String", size: 3, possessor: "None", numberOfBuldings: 6, resurse: "String", x: 3, y: 4, width: 5, height: 6)].self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppUtility.lockOrientation(.landscapeLeft)
        
        getArmy(army: sendArmyInfo!)
        setScollerView(map: sendMapInfo!)
        setZoomScale(for: scrollView.bounds.size)
        scrollView.zoomScale = scrollView.maximumZoomScale
        scrollView.zoomScale = scrollView.minimumZoomScale
        setCalenderfrense()
        xtraImages()
        setBankfrense()
        setGameReference()
        endTurnButton()
        setinfoChatfrense()
        
        
        
        getTheTeritorrys(map: "\(sendMapInfo ?? "Strangerson Island")")
        
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
    
    // all the buttons functions
    
    //open and closed the time button
    @IBAction func timeButtonClicked(_ sender: UIButton) {
        switch selectedTimebuttons {
        case "TimeButtonOpen":
            calenderButtonClosed()
        case "TimeButtonClosed":
            calendarButtonOpend()
        default:
            print("defulttt")
        }
    }
    
    //open and closed the bank button
    @IBAction func bankButtonClicked(_ sender: UIButton) {
        switch selectedBankButton {
        case "bankButtonOpen":
            bankBClosed()
        case "bankButtonClosed":
            bankBOpend()
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
    
    //open and closed the infochat button
    @IBAction func infoChatButtonClicked(_ sender: UIButton) {
        switch selectedInfoChatbuttons {
        case "infoChatOpen":
            infoChatClosed()
        case "infoChatClosed":
            infoChatnOpend()
        default:
            print("defulttt")
        }
    }
    
    //open the info/Chat view
    @IBAction func infoChatactionButtonClicked(recognaizer: MyTapGesture){
        switch recognaizer.stringValue{
        case "infoButton":
            
            chat.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
            info.setBackgroundImage(UIImage(named: "TeckOn"), for: UIControl.State.normal)
            info.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 9)
            info.setTitleColor(.systemGray3, for: .normal)
            chat.setTitleColor(.systemGreen, for: .normal)
            chat.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            setinfoChatSystem(display: infoArray[0],title: infoArray[1] , massage: infoArray[2], image: infoArray[3])
        case "chatButton":
            chat.setBackgroundImage(UIImage(named: "SpecialOn"), for: UIControl.State.normal)
            info.setBackgroundImage(UIImage(named: "TeckOff"), for: UIControl.State.normal)
            info.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
            info.setTitleColor(.systemBlue, for: .normal)
            chat.setTitleColor(.systemGray3, for: .normal)
            chat.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 9)
            
            subjectBiuldingImage.isHidden = true
            subjectBiuldinInfo.isHidden = true
            informationBiildingTitle.isHidden = true
            subjectArmyImage.isHidden = true
            subjectArmyInfo.isHidden = true
            informationArmyTitle.isHidden = true
            informationTitle.isHidden = true
            subjectInfo.isHidden = true
        default:
            print("defulttt")
        }
    }
    //get the alerts from few buttons and send back alert
    @IBAction func alert(recognaizer: MyTapGesture){
        switch recognaizer.stringValue {
        case "Calendar":
            let title = "Calendar"
            let messege = "In the Calender you can see how many turns did the game have.\n"
            + "In planet LV7000 every week is eight days, anm every month is 24 says and Three weeks.\n" + "you need to biuld Rocket launchers becuse every eight days you will send suplay: water & titanium back to earth and you get money and peuple in returne.\n" + "every month there will be a secret suplay and every player will get somthing unique from back home."
            
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "no image"
        case "LVbit":
            let title = "LVbit"
            let messege = "LVbit: for every teritory you have you get more. teritorry size also have a factor: as the teritorry is bigger means more LVbit. Terraforming Building helps peuple breath sow if you biuld them you'll have biger incom "
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "Money"
            case "Water":
            let title = "Water"
            let messege =  "Water: water plants help you increse youre water suplay. Every eigth days you will send as much water as you can back home, in return you will get mor troops from youre homland."
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "Water"
            case "Titanium":
            let title = "Titanium"
            let messege = "Titanium: Titanium Refinery help you increse youre Titanium suplay. titanium is Important for youre Armed forces. they all need it for there batturies. if you send Titanium home you will get in return LVbit and Troops!"
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "Titanium"
            case "Uranium":
            let title = "Uranium"
            let messege = "Uranium: Uranium Mine help you increse youre uranium suplay. uranium is used for special vehicles and biuldings"
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "Uranium"
            case "Troops":
            let title = "Troops"
            let messege = "Troops: you will get more troops from youre homland if you send water and titanium back home. troops are needed to buy more Army. infantry and armed forces "
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "Soldier"
        case "Turn":
            let title = "Turnumeter"
            let messege = "Here you can see how many turns have been played this week end how much left to the end of it.\n" + "in the center of the Turnumeter you can passed your turn to the next player.\n" + "make sure you did everithing you wanted to do(biuld and moving aruond)befoure you pass youre turn."
            setinfoChatSystem(display: "information" ,title: title, massage: messege, image: "no image ")
            
            infoArray[0] = "information"
            infoArray[1] = title
            infoArray[2] = messege
            infoArray[3] = "no image"
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
    func setScollerView(map: String){
        let mapSend = map
        
        scrollImageView.image = (UIImage(named: mapSend))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        scrollView.backgroundColor = .black
        scrollImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        //scrollImageView.frame = view.bounds
        scrollImageView.contentMode = .scaleAspectFill
        scrollImageView.clipsToBounds = true
        scrollView.delegate = self
        scrollView.addSubview(scrollImageView)
        
        
        view.sendSubviewToBack(scrollImageView)
        view.addSubview(scrollView)
    }
    
    //set the time refrenses and buttons atribiuts(on the top right of the screen)
    func setCalenderfrense(){
        calenderButton.contentMode = .scaleAspectFill
        calenderButton.setBackgroundImage(UIImage(named: "TimeButtonOpen"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonOpen"
        view.addSubview(calenderButton)
        calenderButton.frame = CGRect(x: 405, y: 0, width: 258, height: 70)
        calenderButton.addTarget(self, action: #selector(timeButtonClicked), for: .touchUpInside)
        calenderButton.addSubview(turnTextField)
        turnTextField.frame = CGRect(x: 80, y: 13, width: 200, height: 35)
        turnTextField.textAlignment = NSTextAlignment.left
        turnTextField.backgroundColor = .clear
        turnTextField.textColor = UIColor.systemTeal
        turnTextField.font = UIFont(name: "SofachromeRg-Italic", size: 10)
        turnTextField.text = "Turn: \(gameTurn)"
        turnTextField.isUserInteractionEnabled = false
        calenderButton.addSubview(timeTextField)
        timeTextField.frame = CGRect(x: -7, y: -2, width: 260, height: 30)
        timeTextField.textAlignment = NSTextAlignment.center
        timeTextField.backgroundColor = .clear
        timeTextField.textColor = UIColor.systemTeal
        timeTextField.font = UIFont(name: "SofachromeRg-Italic", size: 9)
        timeTextField.text = " \(time())"
        timeTextField.isUserInteractionEnabled = false
        informationCalender.setBackgroundImage(UIImage(named: "Information"), for: UIControl.State.normal)
        informationCalender.contentMode = .scaleAspectFill
        view.addSubview(informationCalender)
        informationCalender.frame = CGRect(x: 632, y: 37, width: 15, height: 15)
        let tapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        tapped.stringValue = "Calendar"
        informationCalender.addGestureRecognizer(tapped)
        
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
    func calendarButtonOpend(){
        calenderButton.setBackgroundImage(UIImage(named: "TimeButtonOpen"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonOpen"
        calenderButton.frame = CGRect(x: 405, y: 0, width: 258, height: 70)
        timeTextField.isHidden = false
        informationCalender.isHidden = false
        turnTextField.isHidden = false
    }
    
    //time button closed attribiuts
    func calenderButtonClosed(){
        calenderButton.setBackgroundImage(UIImage(named: "TimeButtonClosed"), for: UIControl.State.normal)
        selectedTimebuttons = "TimeButtonClosed"
        calenderButton.frame = CGRect(x: 405, y: 0, width: 258, height: 25)
        informationCalender.isHidden = true
        timeTextField.isHidden = true
        turnTextField.isHidden = true
    }
    
    func setinfoChatfrense(){
        infoCaht.isUserInteractionEnabled = true
        
        infoCaht.contentMode = .scaleToFill
        infoCaht.image = UIImage(named: "infoChatOpen")
        selectedInfoChatbuttons = "infoChatOpen"
        view.addSubview(infoCaht)
        infoCaht.frame = CGRect(x: -3, y: 46, width: 190, height: 125)
        infoCaht.clipsToBounds = true
        infoChatClosedButton.addTarget(self, action: #selector(infoChatButtonClicked), for: .touchUpInside)
        infoCaht.addSubview(infoChatClosedButton)
        infoChatClosedButton.frame = CGRect(x: 85, y: 13, width: 20, height: 20)
        infoChatClosedButton.setBackgroundImage(UIImage(named: "MoveLeft"), for: UIControl.State.normal)
        info.setBackgroundImage(UIImage(named: "TeckOn"), for: UIControl.State.normal)
        info.contentMode = .scaleAspectFill
        infoCaht.addSubview(info)
        info.frame = CGRect(x: 10, y: 13, width: 75, height: 20)
        let tapped = MyTapGesture.init(target: self, action:#selector(self.infoChatactionButtonClicked(recognaizer:)))
        tapped.stringValue = "infoButton"
        info.addGestureRecognizer(tapped)
        info.setTitle("Info", for: UIControl.State.normal)
        info.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 9)
        info.setTitleColor(.systemGray3, for: .normal)
        chat.setTitle("Chat", for: UIControl.State.normal)
        chat.setTitleColor(.systemGreen, for: .normal)
        chat.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 7)
        chat.setBackgroundImage(UIImage(named: "SpecialOff"), for: UIControl.State.normal)
        chat.contentMode = .scaleAspectFill
        infoCaht.addSubview(chat)
        chat.frame = CGRect(x: 105, y: 13, width: 75, height: 20)
        let tappedchat = MyTapGesture.init(target: self, action:#selector(self.infoChatactionButtonClicked(recognaizer:)))
        tappedchat.stringValue = "chatButton"
        chat.addGestureRecognizer(tappedchat)
    }
    
    //controlling what will be display in the infochat
    func setinfoChatSystem(display: String ,title: String, massage: String, image: String){
        switch display {
        case "biulding":
            infoCaht.addSubview(informationBiildingTitle)
            informationBiildingTitle.text = "\(title)"
            informationBiildingTitle.backgroundColor = .clear
            informationBiildingTitle.textColor = UIColor.black
            informationBiildingTitle.font = UIFont(name: "SofachromeRg-Italic", size: 11)
            informationBiildingTitle.isUserInteractionEnabled = false
            informationBiildingTitle.frame =  CGRect(x: 10, y: 28, width: 170, height: 30)
            informationBiildingTitle.textAlignment = .left
            informationBiildingTitle.isEditable = false
            infoCaht.addSubview(subjectBiuldingImage)
            subjectBiuldingImage.image = UIImage(named: image)
            subjectBiuldingImage.clipsToBounds = true
            subjectBiuldingImage.contentMode = .scaleToFill
            subjectBiuldingImage.frame = CGRect(x: 10, y: 50, width: 80, height: 70)
            subjectBiuldinInfo.text = "\(massage)"
            subjectBiuldinInfo.textColor = UIColor.systemGray6
            subjectBiuldinInfo.font = UIFont(name: "SofachromeRg-Italic", size: 9)
            subjectBiuldinInfo.backgroundColor = .clear
            subjectBiuldinInfo.isScrollEnabled = true
            subjectBiuldinInfo.isEditable = false
            subjectBiuldinInfo.textAlignment = NSTextAlignment.left
            subjectBiuldinInfo.frame = CGRect(x: 90, y: 52, width: 90, height: 65)
            subjectBiuldinInfo.isEditable = false
            infoCaht.addSubview(informationBiildingTitle)
            infoCaht.addSubview(subjectBiuldinInfo)
            
            
            subjectBiuldingImage.isHidden = false
            subjectBiuldinInfo.isHidden = false
            informationBiildingTitle.isHidden = false
            subjectArmyImage.isHidden = true
            subjectArmyInfo.isHidden = true
            informationArmyTitle.isHidden = true
            informationTitle.isHidden = true
            subjectInfo.isHidden = true
        case "army":
            infoCaht.addSubview(informationArmyTitle)
            informationArmyTitle.text = "\(title)"
            informationArmyTitle.backgroundColor = .clear
            informationArmyTitle.textColor = UIColor.black
            informationArmyTitle.font = UIFont(name: "SofachromeRg-Italic", size: 11)
            informationArmyTitle.isUserInteractionEnabled = false
            informationArmyTitle.frame = CGRect(x: 10, y: 28, width: 170, height: 30)
            informationArmyTitle.textAlignment = .left
            informationArmyTitle.isEditable = false
            infoCaht.addSubview(subjectArmyImage)
            subjectArmyImage.image = UIImage(named: "\(image)")
            subjectArmyImage.clipsToBounds = true
            subjectArmyImage.contentMode = .scaleToFill
            subjectArmyImage.frame = CGRect(x: 10, y: 50, width: 80, height: 70)
            subjectArmyInfo.text = "\(massage)"
            subjectArmyInfo.textColor = UIColor.systemGray6
            subjectArmyInfo.font = UIFont(name: "SofachromeRg-Italic", size: 9)
            subjectArmyInfo.backgroundColor = .clear
            subjectArmyInfo.frame = CGRect(x: 90, y: 52, width: 90, height: 65)
            subjectArmyInfo.isScrollEnabled = true
            subjectArmyInfo.isEditable = false
            subjectArmyInfo.textAlignment = NSTextAlignment.left
            subjectArmyInfo.isEditable = false
            infoCaht.addSubview(subjectArmyInfo)
            
            subjectBiuldingImage.isHidden = true
            subjectBiuldinInfo.isHidden = true
            informationBiildingTitle.isHidden = true
            subjectArmyImage.isHidden = false
            subjectArmyInfo.isHidden = false
            informationArmyTitle.isHidden = false
            informationTitle.isHidden = true
            subjectInfo.isHidden = true
        case "information":
            
            informationTitle.isUserInteractionEnabled = false
            infoCaht.addSubview(informationTitle)
            informationTitle.text = "\(title)"
            informationTitle.backgroundColor = .clear
            informationTitle.textColor = UIColor.black
            informationTitle.font = UIFont(name: "SofachromeRg-Italic", size: 11)
            informationTitle.isUserInteractionEnabled = false
            informationTitle.frame = CGRect(x: 10, y: 28, width: 170, height: 30)
            informationTitle.isEditable = false
            informationTitle.textAlignment = .left
            infoCaht.addSubview(subjectInfo)
            subjectInfo.text = "\(massage)"
            subjectInfo.textColor = UIColor.systemGray6
            subjectInfo.font = UIFont(name: "SofachromeRg-Italic", size: 10)
            subjectInfo.frame = CGRect(x: 7 , y: 50, width: 180, height: 65)
            subjectInfo.backgroundColor = .clear
            subjectInfo.isScrollEnabled = true
            subjectInfo.isEditable = false
             subjectInfo.textAlignment = NSTextAlignment.left
            subjectInfo.isEditable = false
            subjectBiuldingImage.isHidden = true
            subjectBiuldinInfo.isHidden = true
            informationBiildingTitle.isHidden = true
            subjectArmyImage.isHidden = true
            subjectArmyInfo.isHidden = true
            informationArmyTitle.isHidden = true
            informationTitle.isHidden = false
            subjectInfo.isHidden = false
        case "chat":
            print("chat")
        default:
            print("nothing")
            
        }
    }
    
    
    //infoChat button open attribiuts
    func infoChatnOpend(){
        infoCaht.image = UIImage(named: "infoChatOpen")
        selectedInfoChatbuttons = "infoChatOpen"
        infoCaht.frame = CGRect(x: -3, y: 46, width: 190, height: 125)
        infoChatClosedButton.frame = CGRect(x: 85, y: 13, width: 20, height: 20)
        infoChatClosedButton.setBackgroundImage(UIImage(named: "MoveLeft"), for: UIControl.State.normal)
        chat.isHidden = false
        info.isHidden = false
        
        
        setinfoChatSystem(display: infoArray[0],title: infoArray[1] , massage: infoArray[2], image: infoArray[3])
        
    }
    
    //infochat button closed attribiuts
    func infoChatClosed(){
        infoCaht.image = UIImage(named: "infoChatClosed")
        infoCaht.frame = CGRect(x: -3, y: 46, width: 30,height: 125)
        selectedInfoChatbuttons = "infoChatClosed"
        infoChatClosedButton.frame = CGRect(x: 0, y: 13, width: 30, height: 20)
        infoChatClosedButton.setBackgroundImage(UIImage(named: "MoveRight"), for: UIControl.State.normal)
        chat.isHidden = true
        info.isHidden = true
        subjectBiuldingImage.isHidden = true
        subjectBiuldinInfo.isHidden = true
        informationBiildingTitle.isHidden = true
        subjectArmyImage.isHidden = true
        subjectArmyInfo.isHidden = true
        informationArmyTitle.isHidden = true
        informationTitle.isHidden = true
        subjectInfo.isHidden = true
       
    }
    
    
    //set the bank refrenses and buttons atribiuts(on the top left of the screen)
    func setBankfrense(){
        bankButton.contentMode = .scaleAspectFill
        bankButton.setBackgroundImage(UIImage(named: "MoneyButton"), for: UIControl.State.normal)
        selectedBankButton = "bankButtonOpen"
        view.addSubview(bankButton)
        bankButton.frame = CGRect(x: 2, y: 0, width: 351, height: 50)
        bankButton.addTarget(self, action: #selector(bankButtonClicked), for: .touchUpInside)

       
        
        bitTextField.textAlignment = NSTextAlignment.left
        bitTextField.backgroundColor = .clear
        bitTextField.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        bitTextField.isUserInteractionEnabled = false
        bitTextField.text = "\(lvBit)"
        bankButton.addSubview(bitTextField)
        bitTextField.textColor = .black
        
        waterTextField.textAlignment = NSTextAlignment.left
        waterTextField.backgroundColor = .clear
        waterTextField.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        waterTextField.isUserInteractionEnabled = false
        waterTextField.text = "\(water)"
        bankButton.addSubview(waterTextField)
        waterTextField.isUserInteractionEnabled = false
        waterTextField.textColor = .black
       
        titaniumTextField.textAlignment = NSTextAlignment.left
        titaniumTextField.backgroundColor = .clear
        titaniumTextField.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        titaniumTextField.isUserInteractionEnabled = false
        titaniumTextField.text = "\(titanium) "
        bankButton.addSubview(titaniumTextField)
        titaniumTextField.isUserInteractionEnabled = false
        titaniumTextField.textColor = .black
       
        uraniumTextField.textAlignment = NSTextAlignment.left
        uraniumTextField.backgroundColor = .clear
        uraniumTextField.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        uraniumTextField.isUserInteractionEnabled = false
        uraniumTextField.text = "\(uranium) "
        bankButton.addSubview(uraniumTextField)
        uraniumTextField.isUserInteractionEnabled = false
        uraniumTextField.textColor = .black
        bitButton.setImage(UIImage(named: "Money"), for: UIControl.State.normal)
        
        waterButton.setImage(UIImage(named: "Water"), for: UIControl.State.normal)
           
        titaniumButton.setImage(UIImage(named: "Titanium"), for: UIControl.State.normal)
            
        uraniumButton.setImage(UIImage(named: "Uranium"), for: UIControl.State.normal)
            
        
        troopsButton.contentMode = .scaleAspectFill
        
        troopsButton.setImage(UIImage(named: "Soldier"), for: UIControl.State.normal)
            
        bankButton.addSubview(troopsButton)
        bitButton.frame = CGRect(x: 60, y: 3, width: 25, height: 25)
        bitTextField.frame = CGRect(x: 30, y: 15 , width: 311, height: 37)
        waterButton.frame = CGRect(x: 120, y: 3, width: 20, height: 20)
        waterTextField.frame = CGRect(x: 105, y: 15 , width: 311, height: 37)
        titaniumButton.frame = CGRect(x: 180, y: 3, width: 24, height: 24)
         titaniumTextField.frame = CGRect(x: 170, y: 15 , width: 311, height: 37)
        uraniumButton.frame = CGRect(x: 240, y: 3, width: 22, height: 22)
         uraniumTextField.frame = CGRect(x: 230, y: 15 , width: 311, height: 37)
        troopsButton.frame = CGRect(x: 300, y: 1, width: 23, height: 25)
         troopsTextField.frame = CGRect(x: 290, y: 15 , width: 311, height: 37)

        bitButton.contentMode = .scaleAspectFill
        waterButton.contentMode = .scaleAspectFill
        titaniumButton.contentMode = .scaleAspectFill
        uraniumButton.contentMode = .scaleAspectFill
        bankButton.addSubview(bitButton)
        bankButton.addSubview(waterButton)
        bankButton.addSubview(titaniumButton)
        bankButton.addSubview(uraniumButton)
        
        
        let bitTapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        bitTapped.stringValue = "LVbit"
        bitButton.addGestureRecognizer(bitTapped)
        
        let watTapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        watTapped.stringValue = "Water"
        waterButton.addGestureRecognizer(watTapped)
        
        let titTapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        titTapped.stringValue = "Titanium"
        titaniumButton.addGestureRecognizer(titTapped)
        
        let uraTapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        uraTapped.stringValue = "Uranium"
        uraniumButton.addGestureRecognizer(uraTapped)
        
        let troTapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        troTapped.stringValue = "Troops"
        troopsButton.addGestureRecognizer(troTapped)
        
        
        
        
       
        troopsTextField.textAlignment = NSTextAlignment.left
        troopsTextField.backgroundColor = .clear
        troopsTextField.font = UIFont(name: "SofachromeRg-Italic", size: 11)
        troopsTextField.isUserInteractionEnabled = false
        troopsTextField.text = "\(soldiers) "
        bankButton.addSubview(troopsTextField)
        troopsTextField.textColor = .black
    }
    
    //bank button open attribiuts
    func bankBOpend(){
        
        bankButton.setBackgroundImage(UIImage(named: "MoneyButton"), for: UIControl.State.normal)
        selectedBankButton = "bankButtonOpen"
        bankButton.frame = CGRect(x: 2, y: 0, width: 351, height: 50)
        bitTextField.isHidden = false
        bitButton.isHidden = false
        waterButton.isHidden = false
        titaniumButton.isHidden = false
        uraniumButton.isHidden = false
        waterTextField.isHidden = false
        uraniumTextField.isHidden = false
        titaniumTextField.isHidden = false
        troopsTextField.isHidden = false
        troopsButton.isHidden = false
    }
    
    //bank button closed attribiuts
    func bankBClosed(){
        
        bankButton.setBackgroundImage(UIImage(named: "MoneyButtonClosed"), for: UIControl.State.normal)
        selectedBankButton = "bankButtonClosed"
        bankButton.frame = CGRect(x: 2, y: 0, width: 351, height: 20)
        
        bitButton.isHidden = true
        titaniumButton.isHidden = true
        waterButton.isHidden = true
        uraniumButton.isHidden = true
        bitTextField.isHidden = true
        waterTextField.isHidden = true
        uraniumTextField.isHidden = true
        titaniumTextField.isHidden = true
        troopsTextField.isHidden = true
        troopsButton.isHidden = true
    }
    
    //set the game refrenses and buttons atribiuts(on the buttom of the screen)
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
    
    //game button closed attribiuts
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
        xtraTopFrame.frame = CGRect(x: 352, y: -1, width: 55, height: 20)
        
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
        
        informationTurnButton.setBackgroundImage(UIImage(named: "Information"), for: UIControl.State.normal)
        endTurnImage.addSubview(informationTurnButton)
        informationTurnButton.frame = CGRect(x:80 ,y: 40 ,width: 20, height: 20)
        let tapped = MyTapGesture.init(target: self, action:#selector(self.alert(recognaizer:)))
        tapped.stringValue = "Turn"
        informationTurnButton.addGestureRecognizer(tapped)
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
    func getTheTeritorrys(map: String) {
       
       
        switch  map{
            
        case "Strangerson Island":
            playerTeritorrys.removeAll()
            let number = Int.random(in: 0 ..< StrangersonIsland.count-2)
            playerTeritorrys.append(StrangersonIsland[number])
            playerTeritorrys.append(StrangersonIsland[number + 1])
            playerTeritorrys.append(StrangersonIsland[number + 2])
            playerOne.removeAll()
            playerOne.append(contentsOf: playerTeritorrys)
            
            
            
            case "Siberian Tiger":
            playerTeritorrys.removeAll()
            let number = Int.random(in: 0 ..< StrangersonIsland.count-2)
            playerTeritorrys.append(SiberianTiger[number])
            playerTeritorrys.append(SiberianTiger[number + 1])
            playerTeritorrys.append(SiberianTiger[number + 2])
            playerOne.removeAll()
            playerOne.append(contentsOf: playerTeritorrys)
            case "Welcome to the Jungle":
            playerTeritorrys.removeAll()
            let number = Int.random(in: 0 ..< StrangersonIsland.count-2)
            playerTeritorrys.append(WelcomeToTheJungle[number])
            playerTeritorrys.append(WelcomeToTheJungle[number + 1])
            playerTeritorrys.append(WelcomeToTheJungle[number + 2])
            playerOne.removeAll()
            playerOne.append(contentsOf: playerTeritorrys)
            case "Lawrence of Arabia":
            playerTeritorrys.removeAll()
            let number = Int.random(in: 0 ..< StrangersonIsland.count-2)
            playerTeritorrys.append(LawrenceOfArabia[number])
            playerTeritorrys.append(LawrenceOfArabia[number + 1])
            playerTeritorrys.append(LawrenceOfArabia[number + 2])
            playerOne.removeAll()
            playerOne.append(contentsOf: playerTeritorrys)
        default:
            print("nomap")
        }
        if let name = UserDefaults.standard.string(forKey: "uName"){
            playerOne[0].possessor = (name)
            playerOne[1].possessor = (name)
            playerOne[2].possessor = (name)
            
        }
        
        
    }
    
    func getArmy(army: String){
        
       
        switch army {
        case "United States":
            buildingsArray.append(contentsOf: usaBuldings)
            armysArray.append(contentsOf: usaArmys)
            teckArray.append(contentsOf: usaTechs)
            specialArray.append(contentsOf: usaSpecials)
        case "China":
            buildingsArray.append(contentsOf: chiBuldings)
            armysArray.append(contentsOf: chiArmys)
            teckArray.append(contentsOf: chiTechs)
            specialArray.append(contentsOf: chiSpecials)
        case "Russia":
            buildingsArray.append(contentsOf: RussiaBuldings)
            armysArray.append(contentsOf: RussiaArmys)
            teckArray.append(contentsOf: RussiaTechs)
            specialArray.append(contentsOf: RussiaSpecials)
        case "Germany":
            buildingsArray.append(contentsOf: gerBuldings)
            armysArray.append(contentsOf: gerArmys)
            teckArray.append(contentsOf: gerTechs)
            specialArray.append(contentsOf: gerSpecials)
        case "Mexico":
            buildingsArray.append(contentsOf: mexBuldings)
            armysArray.append(contentsOf: mexArmys)
            teckArray.append(contentsOf: mexTechs)
            specialArray.append(contentsOf: mexSpecials)
        case "Iran":
            buildingsArray.append(contentsOf: iraBuldings)
            armysArray.append(contentsOf: iraArmys)
            teckArray.append(contentsOf: iraTechs)
            specialArray.append(contentsOf: iraSpecials)
        case "India":
            buildingsArray.append(contentsOf: indBuldings)
            armysArray.append(contentsOf: indArmys)
            teckArray.append(contentsOf: indTechs)
            specialArray.append(contentsOf: indSpecials)
        case "South Africa":
            buildingsArray.append(contentsOf: souBuldings)
            armysArray.append(contentsOf: souArmys)
            teckArray.append(contentsOf: souTechs)
            specialArray.append(contentsOf: souSpecials)
        case "Israel":
            buildingsArray.append(contentsOf: isrBuldings)
            armysArray.append(contentsOf: isrArmys)
            teckArray.append(contentsOf: isrTechs)
            specialArray.append(contentsOf: isrSpecials)
        case "United Kingdom":
            buildingsArray.append(contentsOf: ukBuldings)
            armysArray.append(contentsOf: ukArmys)
            teckArray.append(contentsOf: ukTechs)
            specialArray.append(contentsOf: ukSpecials)
        case "Japan":
            buildingsArray.append(contentsOf: japBuldings)
            armysArray.append(contentsOf: japArmys)
            teckArray.append(contentsOf: japTechs)
            specialArray.append(contentsOf: japSpecials)
        default:
            print("no army")
        }

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
            return buildingsArray.count
        case "armyButton":
            return armysArray.count
        case "techButton":
            return teckArray.count
        case "specialButton":
            return specialArray.count
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
            let bulding = buildingsArray[indexPath.row]
            BuldingCell.data = bulding
            BuldingCell.BuldingCellDelegate = self
            BuldingCell.index = indexPath
            
            
            return BuldingCell
            
        case "armyButton":
            let armyCell = tableView.dequeueReusableCell(withIdentifier: "armyCell", for: indexPath) as! ArmyTableViewCell
            armyCell.backgroundColor = .clear
            let army = armysArray[indexPath.row]
            armyCell.data = army
            armyCell.ArmyCellDelegate = self
            armyCell.index = indexPath
            return armyCell
            
        case "techButton":
            let techCell = tableView.dequeueReusableCell(withIdentifier: "techCell", for: indexPath) as! TechTableViewCell
            techCell.backgroundColor = .clear
            let tech = teckArray[indexPath.row]
            techCell.data = tech
            techCell.TechCellDelegate = self
            techCell.index = indexPath
            return techCell
            
        case "specialButton":
            let spechialCell = tableView.dequeueReusableCell(withIdentifier: "spechialCell", for: indexPath) as! SpecialTableViewCell
            spechialCell.backgroundColor = .clear
            let special = specialArray[indexPath.row]
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
    func onClickCell(index: Int, title: String, massage: String, image: String) {
        setinfoChatSystem(display: "biulding", title: title, massage: massage, image: image)
        infoArray[0] = "biulding"
        infoArray[1] = title
        infoArray[2] = massage
        infoArray[3] = image
        
    }
    
    
    func onClickBiuld(index: Int, image: String, price: Int) {
        
        print(index, image, price)
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
            GameCollectionViewCell.init().sendNumberOfBiuldings(sender: self)
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
}

//get info from specialcell
extension BaseGameViewController: SpecialTableViewProtocol{
    func onClickSpecialCell(index: Int, title: String, massage: String, image: String) {
        setinfoChatSystem(display: "biulding",title: title, massage:  massage, image: image)
        infoArray[0] = "biulding"
        infoArray[1] = title
        infoArray[2] = massage
        infoArray[3] = image
        
    }
}

//get info from theccell
extension BaseGameViewController: TechTableViewProtocol{
    func OnClickTechCell(index: Int, title: String, massage: String, image: String) {
        
        setinfoChatSystem(display: "biulding", title: title, massage: massage, image: image)
        infoArray[0] = "biulding"
        infoArray[1] = title
        infoArray[2] = massage
        infoArray[3] = image
        
    }
}

//get info from armycell
extension BaseGameViewController: ArmyTableViewCProtocol{
    func onClickArmyCell(index: Int, title: String, massage: String, image: String) {
        
        setinfoChatSystem(display: "army",title: title, massage: massage, image: image)
        infoArray[0] = "army"
        infoArray[1] = title
        infoArray[2] = massage
        infoArray[3] = image
    }
    
    
    func onClickBiuld(index: Int, title: String, image: String, price: Int, hitPoints: Int) {
        print(index, image, price, hitPoints, title)
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


