//
//  GameViewControler.swift
//  Lv7000
//
//  Created by Mac on 21/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseDatabase

let notificationBild = "biuld"

//the view of the front game
class GameViewControler: BaseGameViewController  {
    
    let biuld = Notification.Name(rawValue: notificationBild)
    deinit {
        NotificationCenter.default
        .removeObserver(self)
    }
    let ref  = Database.database().reference()
    
    let btn = UIButton()
    //set the layouts of the collection view
    var teritoryCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    var oneTeritoryCollectionView:  UICollectionView = {
        let lay = UICollectionViewFlowLayout()
        lay.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: lay)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    public var courentBiulding = ""
    let collorDictiunary : [String: UIColor] = [
        "red": .red,
        "white": .white,
        "blue": .blue,
        "brown": .brown,
        "cyan": .cyan,
        "darkGray": .darkGray,
        "gray": .gray,
        "green": .green,
        "lightGray": .lightGray,
        "magenta": .magenta,
        "orange": .orange,
        "purple": .purple,
        "systemIndigo": .systemIndigo,
        "systemPink": .systemPink,
        "systemTeal": .systemTeal,
        "systemYellow": .systemYellow,
    ]
    //maps array from items array
    var teritorryTitle = "ti"
    var pivotX = 1
    var pivoty = 1
    var width = 1
    var height = 1
    var oner = "no"
    var isTeritorryOwned = true
    var funcOn = false
    var numOfBildings = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMap()
        setCollectionView()
        getTeritorryAtribiuts(num: teritorryNumber)
        moveTheView(image: teritorryTitle, pivx: pivotX, pivy: pivoty,pivW: width, pivH: height)
        creatObservers()
    }
    
    func creatObservers(){
        NotificationCenter.default.addObserver(self, selector: #selector(refreshEverithing), name: biuld, object: nil)
    }
    //get cordinates of the capitol teritorry for the start of each turn
    func getTeritorryAtribiuts(num: Int){
        
        let num = num
        
        let tit =  StrangersonIsland[num].title
        let pivX = StrangersonIsland[num].x
        let pivY = StrangersonIsland[num].y
        let pivWh = StrangersonIsland[num].width
        let pivHi = StrangersonIsland[num].height
        let on = StrangersonIsland[num].possessor
        let nob = StrangersonIsland[num].numberOfBuldings
        
        teritorryTitle = tit
        pivotX = pivX
        pivoty = pivY
        width = pivWh
        height = pivHi
        oner = on
        numOfBildings = nob
    }
    
    //set collection view attribiuts
    func setCollectionView(){
        
        gameImage.addSubview(teritoryCollectionView)
        teritoryCollectionView.delegate = self
        teritoryCollectionView.dataSource = self
        teritoryCollectionView.register(TeritorryCollectionViewCell.self, forCellWithReuseIdentifier: "colCell")
        teritoryCollectionView.frame = CGRect(x: 50, y:10, width: 245, height: 150)
        teritoryCollectionView.backgroundColor = UIColor.clear
        teritoryCollectionView.isPagingEnabled = true
    }
    
    func setOneCollectionView(){
        gameImage.addSubview(oneTeritoryCollectionView)
        oneTeritoryCollectionView.delegate = self
        oneTeritoryCollectionView.dataSource = self
        oneTeritoryCollectionView.register(OneTeritorryCollectionViewCell.self, forCellWithReuseIdentifier: "oneTeritorryCell")
        oneTeritoryCollectionView.frame = CGRect(x: 50, y:10, width: 245, height: 150)
        oneTeritoryCollectionView.backgroundColor = UIColor.clear
        oneTeritoryCollectionView.isPagingEnabled = true
        oneTeritoryCollectionView.isHidden = true
        funcOn = true
    }
    
    //biuld the map that was chosen for each player
    func buildMap(){
        
        switch gameInfo[1] as! String{
        case "Strangerson Island":
            getMapTeritorrys(map: 1, armyCollor: "systemIndigo")
        case "Siberian Tiger":
            getMapTeritorrys(map: 2, armyCollor: "red")
        case "Welcome to the Jungle":
            getMapTeritorrys(map: 3, armyCollor: "red")
        case "Lawrence of Arabia":
            getMapTeritorrys(map: 4, armyCollor: "red")
            
        default:
            print("no map")
        }
    }
    
    //when pushing  teritorry
    @IBAction func selectedTeritory(sender: UIButton){
        let ter = sender.tag
        var count = 0
        teritorryNumber = ter
        sender.isSelected = !sender.isSelected
        //get the cordinates of the selected teritorry
        getTeritorryAtribiuts(num: teritorryNumber)
        
        //check if the playerName and the teritorry possesor matched
        //show that teritorry on the teritorry cell
        if playerName == oner {
            isTeritorryOwned = true
           
            //check what teritorry has been pushed inside players teritorry
            for _ in playerTeritorrys{
                if "Capitol \(teritorryTitle)" ==  playerTeritorrys[count].title{
                teritoryCollectionView.scrollToItem(at:IndexPath(row: 0, section: 0), at: UICollectionView.ScrollPosition.left, animated: true)
                    break
                }
                if teritorryTitle == playerTeritorrys[count].title{
                    teritoryCollectionView.scrollToItem(at:IndexPath(row: count, section: 0), at: UICollectionView.ScrollPosition.left, animated: true)
                    count = 0
                    break
                }
                count += 1
            }
            oneTeritoryCollectionView.isHidden = true
            teritoryCollectionView.isHidden = false
            teritoryCollectionView.reloadData()
        }else{
            isTeritorryOwned = false
            if funcOn == false{
                setOneCollectionView()
            }
            oneTeritoryCollectionView.reloadData()
            teritoryCollectionView.isHidden = true
            oneTeritoryCollectionView.isHidden = false
        }
        //move the view to the teritorry that was pressed
        moveTheView(image: teritorryTitle, pivx: pivotX, pivy: pivoty,pivW: width, pivH: height)
        
    }
    
    //biuld the map game out of buttons each teritorry
    func getMapTeritorrys(map: Int, armyCollor: String){
        var count = 0
        let color = armyCollor
        
        switch map {
        case 1:
            for teritorry in StrangersonIsland {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image)?.withRenderingMode(.alwaysTemplate), for: UIControl.State.normal)
                
                // need to make teritorry hillighted when pushed
               // teritorysImages.setTitle("\(teritorry.title)", for: .selected)
//                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image)?.withRenderingMode(.alwaysTemplate), for: UIControl.State.selected)
//                teritorysImages.setTitleColor(.systemGray ,for: .selected)
//
               
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                teritorysImages.addTarget(self, action: #selector(selectedTeritory), for: UIControl.Event.touchUpInside)
                teritorysImages.tag = count
                if teritorryNumber == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 1 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 2 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                
                count += 1
            }
        case 2:
            for teritorry in SiberianTiger {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image)?.withRenderingMode(.alwaysTemplate), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                teritorysImages.addTarget(self, action: #selector(selectedTeritory), for: UIControl.Event.touchDownRepeat)
                
                teritorysImages.tag = count
                if teritorryNumber == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 1 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 2 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                
                count += 1
                
            }
        case 3:
            for teritorry in WelcomeToTheJungle {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image)?.withRenderingMode(.alwaysTemplate), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                teritorysImages.addTarget(self, action: #selector(selectedTeritory), for: UIControl.Event.touchDownRepeat)
                
                teritorysImages.tag = count
                if teritorryNumber == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 1 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 2 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                
                count += 1
                
            }
        case 4:
            for teritorry in LawrenceOfArabia {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image)?.withRenderingMode(.alwaysTemplate), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                teritorysImages.addTarget(self, action: #selector(selectedTeritory), for: UIControl.Event.touchDownRepeat)
                
                teritorysImages.tag = count
                if teritorryNumber == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 1 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                if teritorryNumber + 2 == count{
                    teritorysImages.tintColor = collorDictiunary[color]
                }
                
                count += 1
            }
            
        default:
            print("no map being biuld")
        }
        
        
    }
    //refreshes all the tableviews and collectionviews
    @IBAction func refreshEverithing(){
       
        teritoryCollectionView.reloadData()
       // oneTeritoryCollectionView.reloadData()
      //  specialGameTableView.reloadData()
      //  defenceGameTableView.reloadData()
     //   armyGameTableView.reloadData()
     //   buldingGameTableView.reloadData()
    }
    
    //move the view to the players teritorry on click
    private func moveTheView(image: String, pivx: Int, pivy: Int, pivW: Int, pivH: Int){
        
        var x = 1.1
        var y = 1.1
        var w = 1.1
        var h = 1.1
        x  = Double(pivx) * 2.5
        y  = Double(pivy) * 2.5
        w  = Double(pivW) / 2.0
        h  = Double(pivH) / 2.0
        
        if x <= 40.5 {
            x = 0.0
            w = 0.0
        }
        if y <= 40 {
            y = 0.0
            h = 0.0
        }
        if x - w >=  1000.0 {
            x = 1000.0
            w = 0
        }
        if y - h >= 700.0 {
            y = 700.0
            h = 0
        }
        scrollView.setZoomScale(2.5, animated: false)
        scrollView.setContentOffset(CGPoint(x: x - w ,y:  y - h), animated: true)
        scrollView.setZoomScale(2.5, animated: true)
        
    }
}

extension GameViewControler: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 245 , height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if isTeritorryOwned == true{
            
            return playerTeritorrys.count
        }else{
            
            return 1
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if isTeritorryOwned == true{
            let collectionCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "colCell", for: indexPath) as! TeritorryCollectionViewCell
            
            let teritorry = playerTeritorrys[indexPath.row]
            collectionCell.data = teritorry
            collectionCell.CollectionDelegate = self
            collectionCell.index = indexPath
            
            
            return collectionCell
        }else{
           
            let collectionOneCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "oneTeritorryCell", for: indexPath) as! OneTeritorryCollectionViewCell
            let teritorry = StrangersonIsland[teritorryNumber]
            collectionOneCell.OneData = teritorry
            collectionOneCell.OneCollectionDelegate = self
            collectionOneCell.OneIndex = indexPath
            return collectionOneCell
        }
    }
}


extension GameViewControler: CollectionProtocol{
    func centurdTeritorry(image: String, index: Int, x: Int, y: Int, width: Int, height: Int) {
        
        moveTheView(image: image, pivx: x, pivy: y, pivW: width, pivH: height)
    }
    
  
    func sendNumberOfBiuldings(index: Int, title: String, NumberOfBiuldings: Int) {
        print("im here3")
        print(index)
        print(title)
        print(NumberOfBiuldings)
        
    }
}

