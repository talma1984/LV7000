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
    
    var sendMapInfo: String?
    var sendArmyInfo: String?
    
    //maps array from items array
    var Island = ItemsArray.fetchIsland()
    var Sahara = ItemsArray.fetchSahara()
    var Amazonas = ItemsArray.fetchAmazonas()
    var Gobi = ItemsArray.fetchGobi()
    var Islands = ItemsArray.fetchIslands()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildMap()
        setCollectionView()
      // button()
    }
    //just a test button
//    func button(){
//        let b = UIButton()
//        b.frame = CGRect(x:50, y: 50, width: 300, height: 300)
//        view.addSubview(b)
//        view.bringSubviewToFront(b)
//
//        b.setImage(UIImage(named: "Usa"), for: UIControl.State.normal)
//        b.addTarget(self, action: #selector(prin), for: UIControl.Event.touchUpInside)
//
//    }
//    @IBAction func prin(){
//        print("\(GameViewControler.shared.courentBiulding)")
//    }
    //set collection view attribiuts
    func setCollectionView(){
        gameImage.addSubview(teritoryCollectionView)
        teritoryCollectionView.delegate = self
        teritoryCollectionView.dataSource = self
        teritoryCollectionView.register(GameCollectionViewCell.self, forCellWithReuseIdentifier: "collCell")
        teritoryCollectionView.frame = CGRect(x: 55, y:10, width: 240, height: 150)
        teritoryCollectionView.backgroundColor = UIColor.clear
        teritoryCollectionView.isPagingEnabled = true
    }
    
    //biuld the map that was chosen for each player
    func buildMap(){
        switch sendMapInfo{
        case "Island":
            getMapTeritorrys(map: "\(Island)")
        case "Sahara":
            print("Sahara")
            getMapTeritorrys(map: "Sahara")
        case "Amazonas":
            print("Amazonas")
            getMapTeritorrys(map: "Amazonas")
        case "Gobi":
            print("Gobi")
            getMapTeritorrys(map: "Gobi")
        case "Islands":
            print("Islands")
            getMapTeritorrys(map: "Islands")
        default:
            print("no map")
        }
    }
    
    //biuld the map game out of buttons each teritorry
    func getMapTeritorrys(map: String){
        //let maps = map
        for teritorry in island {
            let teritorysImages = UIImageView()
            teritorysImages.frame = CGRect(x: teritorry.x,y: teritorry.y,width: teritorry.width, height: teritorry.height )
            teritorysImages.clipsToBounds = true
            teritorysImages.image = UIImage(named: teritorry.image)
            scrollImageView.addSubview(teritorysImages)
        }
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
        
        let teritorry = playerOne[indexPath.row]
        collectionCell.data = teritorry
        collectionCell.CollectionDelegate = self
        collectionCell.index = indexPath
        
        return collectionCell
    }
}

extension GameViewControler: CollectionProtocol{
    func sendNumberOfBiuldings(NumberOfBiuldings: Int) {
        print(NumberOfBiuldings)
    }
}
