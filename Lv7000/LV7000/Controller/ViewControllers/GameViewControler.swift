//
//  GameViewControler.swift
//  Lv7000
//
//  Created by Mac on 21/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit
import FirebaseDatabase



//the view of the front game
class GameViewControler: BaseGameViewController  {
    
    
    
    
   
    
    
     let ref  = Database.database().reference()
    
    
    //set the layouts of the collection view
    let teritoryCollectionView:  UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    
    public var courentBiulding = ""
    
    
    
    
    
    //maps array from items array
    
    var teritorryTitle = "ti"
    var pivotX = 1
    var pivoty = 1
    var width = 1
    var height = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMap()
        setCollectionView()
        getCotrdinates()
        moveTheView(image: teritorryTitle, pivx: pivotX, pivy: pivoty,pivW: width, pivH: height)
   
    }
    //get cordinates of the capitol teritorry for the start of each turn
    func getCotrdinates(){
        
        
        
        let tit =  playerTeritorrys[0].title
        let pivX = playerTeritorrys[0].x
        let pivY = playerTeritorrys[0].y
        let pivWh = playerTeritorrys[0].width
        let pivHi = playerTeritorrys[0].height
        
        
        
        teritorryTitle = tit
        pivotX = pivX
        pivoty = pivY
        width = pivWh
        height = pivHi
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
        
        switch gameInfo[1] as! String{
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
                
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                
                teritorysImages.addTarget(self, action: #selector(move), for: UIControl.Event.touchUpInside)
                
            }
        case 2:
            for teritorry in SiberianTiger {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
              
                
                
            }
        case 3:
            for teritorry in WelcomeToTheJungle {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                
            }
        case 4:
            for teritorry in LawrenceOfArabia {
                let teritorysImages = UIButton()
                teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
                teritorysImages.clipsToBounds = true
                teritorysImages.setBackgroundImage(UIImage(named: teritorry.image), for: UIControl.State.normal)
                teritorysImages.setTitle("\(teritorry.title)", for: .normal)
                teritorysImages.contentHorizontalAlignment = .center
                teritorysImages.titleLabel!.font = UIFont(name: "SofachromeRg-Italic", size: 8)
                teritorysImages.setTitleColor(.systemGray3, for: .normal)
                scrollImageView.addSubview(teritorysImages)
                
            }
            
            
        default:
            print("no map being biuld")
        }
        
        
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
        
//        ref.child("User").observeSingleEvent(of: .value)
//                {(snapshot) in
//                    let user = snapshot.value as? [String:Any]
                    //print(user as Any)
       // }
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
//    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//       let visibleRect = CGRect(origin: teritoryCollectionView.contentOffset, size: teritoryCollectionView.bounds.size)
//       let midPointOfVisibleRect = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
////       if let visibleIndexPath = teritoryCollectionView.indexPathForItem(at: midPointOfVisibleRect) {
////                yourPageControl.currentPage = visibleIndexPath.row
////       }
//    }
    
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
