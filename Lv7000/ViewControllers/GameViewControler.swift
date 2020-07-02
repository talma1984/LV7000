//
//  GameViewControler.swift
//  Lv7000
//
//  Created by Mac on 21/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit


//the view of the front game
class GameViewControler: BaseGameViewController  {
    
    //set the layouts of the collection view
    let teritoryCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    public var courentBiulding = ""
    public static let shared = GameViewControler()
    
    
    
    
    //maps array from items array
    
    
    
    
    var ti = "ti"
    var xx = 1
    var yy = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMap()
        setCollectionView()
        getCotrdinates()
        moveView(image: ti, pivx: xx, pivy: yy)
        
        
    }
    
    //get cordinates of the capitol teritorry for the start of each turn
    func getCotrdinates(){
        
        let tit = playerOne[0].title
        let pivX = playerOne[0].x
        let pivY = playerOne[0].y
        
        ti = tit
        xx = pivX
        yy = pivY
    }
    
    //set collection view attribiuts
    func setCollectionView(){
        gameImage.addSubview(teritoryCollectionView)
        teritoryCollectionView.delegate = self
        teritoryCollectionView.dataSource = self
        teritoryCollectionView.register(GameCollectionViewCell.self, forCellWithReuseIdentifier: "collCell")
        teritoryCollectionView.frame = CGRect(x: 50, y:10, width: 245, height: 150)
        teritoryCollectionView.backgroundColor = UIColor.clear
        teritoryCollectionView.isPagingEnabled = true
        
    }
    
    //biuld the map that was chosen for each player
    func buildMap(){
        print(sendMapInfo as Any)
        switch sendMapInfo{
        case "Strangerson Island":
            getMapTeritorrys(map: 1)
        case "Siberian Tiger":
            
            getMapTeritorrys(map: 2)
        case "Welcome to the Jungle":
            
            getMapTeritorrys(map: 3)
        case "Lawrence of Arabia":
            
            getMapTeritorrys(map: 4)
        
        default:
            print("no map")
        }
    }
    
    @IBAction func move(){
       // moveView(image: String, pivx: Int, pivy: Int)
    }
    
    //biuld the map game out of buttons each teritorry
    func getMapTeritorrys(map: Int){
        
        
        switch map {
        case 1:
            for teritorry in StrangersonIsland {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                //teritorysImages.setImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
               teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                scrollImageView.addSubview(teritorysImages)
                teritorysImages.addTarget(self, action: #selector(move), for: UIControl.Event.touchUpInside)
                
            }
            case 2:
            for teritorry in SiberianTiger {
                let teritorysImages = UIButton()
                 teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                 teritorysImages.clipsToBounds = true
                 //teritorysImages.setImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                 teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                 teritorysImages.setTitleColor(.systemGray3, for: .normal)
                 scrollImageView.addSubview(teritorysImages)
                 scrollImageView.addSubview(teritorysImages)
                
                
            }
            case 3:
            for teritorry in WelcomeToTheJungle {
                let teritorysImages = UIButton()
                 teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                 teritorysImages.clipsToBounds = true
                 //teritorysImages.setImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                 teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                 teritorysImages.setTitleColor(.systemGray3, for: .normal)
                 scrollImageView.addSubview(teritorysImages)
                 scrollImageView.addSubview(teritorysImages)
            }
            case 4:
            for teritorry in LawrenceOfArabia {
                let teritorysImages = UIButton()
                 teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                 teritorysImages.clipsToBounds = true
                 //teritorysImages.setImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                 teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                 teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                 teritorysImages.setTitleColor(.systemGray3, for: .normal)
                 scrollImageView.addSubview(teritorysImages)
                 scrollImageView.addSubview(teritorysImages)
            }
            
            
        default:
            print("no map being biuld")
        }
        
        
    }
    
    //move the view to the players teritorry on click
    private func moveView(image: String, pivx: Int, pivy: Int){
        
        scrollView.setZoomScale(2, animated: true)
        scrollView.setContentOffset(CGPoint(x: pivx*3-180, y: pivy*3-150), animated: true)
        scrollView.setZoomScale(2, animated: true)
    }
}

extension GameViewControler: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 220 , height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ItemsArray.fetchPlayerOneTeritorry().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "collCell", for: indexPath) as! GameCollectionViewCell
        
        let teritorry = playerTeritorrys[indexPath.row]
        collectionCell.data = teritorry
        collectionCell.CollectionDelegate = self
        collectionCell.index = indexPath
        
        return collectionCell
    }
}

extension GameViewControler: CollectionProtocol{
    func sendNumberOfBiuldings(index: Int, title: String, NumberOfBiuldings: Int) {
        print(index)
        print(title)
        print(NumberOfBiuldings)
    }
    
    func centurdTeritorry(image: String, index: Int, x: Int, y: Int) {
        
        
        moveView(image: image, pivx: x, pivy: y)
    }
    
}
