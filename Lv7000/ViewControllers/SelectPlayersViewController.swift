//
//  SelectPlayersViewController.swift
//  Lv7000
//
//  Created by Mac on 14/05/2020.
//  Copyright © 2020 tnt. All rights reserved.
//

import UIKit

class SelectPlayersViewController: ChooseViewController {
    
    @IBOutlet weak var PlayersSagment: UISegmentedControl!
    
    var selectPlayersImage = UIImageView()
    var playersTabelView = UITableView()
    var backStarsImage = UIImageView()
    var numberofPlayers = 8
    @IBOutlet weak var NumberOfPlayersText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NumberOfPlayersText.text = "Players: 2"
        
        setTableView()
        createPlayersArray(players: numberofPlayers)
    }
    
    //set the attribiuts for the tableview
    func setTableView() {
        
        playersTabelView.frame = self.view.frame
        playersTabelView.backgroundColor = UIColor.clear
        playersTabelView.delegate = self
        playersTabelView.dataSource = self
        self.view.addSubview(playersTabelView)
        playersTabelView.translatesAutoresizingMaskIntoConstraints = false
        playersTabelView.backgroundColor = UIColor.brown
        playersTabelView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40.0).isActive = true
        playersTabelView.topAnchor.constraint(equalTo: view.topAnchor, constant: 168.0).isActive = true
        playersTabelView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40.0).isActive = true
        playersTabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -82.0).isActive = true
        playersTabelView.register(PlayersCell.self,  forCellReuseIdentifier: "Cell")
    }
    
    //set the invite player frame
    func setPlayersButtons(){
        
        view.addSubview(selectPlayersImage)
        selectPlayersImage.image = UIImage(named: "SelectPlayyesFrame")
        selectPlayersImage.contentMode = .scaleToFill
        selectPlayersImage.translatesAutoresizingMaskIntoConstraints = false
        selectPlayersImage.heightAnchor.constraint(equalToConstant: 160).isActive = true
        selectPlayersImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300).isActive = true
        selectPlayersImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80).isActive = true
        selectPlayersImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -80).isActive = true
    }
    
    //number of players sagment controll
    @IBAction func NumberOfPlayersSegment(_ sender: Any) {
        
        switch PlayersSagment.selectedSegmentIndex {
        case 0: NumberOfPlayersText.text = "Players: 2"
        createPlayersArray(players: 2)
        numberofPlayers = 2
        case 1: NumberOfPlayersText.text = "Players: 3"
        createPlayersArray(players: 3)
        numberofPlayers = 3
        case 2: NumberOfPlayersText.text = "Players: 4"
        createPlayersArray(players: 4)
        numberofPlayers = 4
        case 3: NumberOfPlayersText.text = "Players: 5"
        createPlayersArray(players: 5)
        numberofPlayers = 5
        case 4: NumberOfPlayersText.text = "Players: 6"
        createPlayersArray(players: 6)
        numberofPlayers = 6
        case 5: NumberOfPlayersText.text = "Players: 7"
        createPlayersArray(players: 7)
        numberofPlayers = 7
        case 6: NumberOfPlayersText.text = "Players: 8"
        createPlayersArray(players: 8)
        numberofPlayers = 2
        default:
            createPlayersArray(players: 2)
        }
    }
    //NumberOfPlayers
    func createPlayersArray(players: Int) {
        let player1 = "Player 1"
        let player2 = "Player 2"
        let player3 = "Player 3"
        let player4 = "Player 4"
        let player5 = "Player 5"
        let player6 = "Player 6"
        let player7 = "Player 7"
        let player8 = "Player 8"
        
        switch players {
        case 2:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
        case 3:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            
        case 4:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            NumberOfPlayers.append(player4)
            
        case 5:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            NumberOfPlayers.append(player4)
            NumberOfPlayers.append(player5)
        case 6:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            NumberOfPlayers.append(player4)
            NumberOfPlayers.append(player5)
            NumberOfPlayers.append(player6)
        case 7:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            NumberOfPlayers.append(player4)
            NumberOfPlayers.append(player5)
            NumberOfPlayers.append(player6)
            NumberOfPlayers.append(player7)
            
        case 8:
            NumberOfPlayers.append(player1)
            NumberOfPlayers.append(player2)
            NumberOfPlayers.append(player3)
            NumberOfPlayers.append(player4)
            NumberOfPlayers.append(player5)
            NumberOfPlayers.append(player6)
            NumberOfPlayers.append(player7)
            NumberOfPlayers.append(player8)
        default:
            print("No players")
        }
    }
    
    //send information to creat game
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "MakeGameSegue" {
            let selectedNumOfPlayers = segue.destination as! CreatGameViewController
            selectedNumOfPlayers.sendNumberOfPlayersInfo = (numberofPlayers as Int)
        }
    }
}
extension SelectPlayersViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NumberOfPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let player = NumberOfPlayers[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(player)"
        cell.textLabel?.textAlignment = .center
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 118
    }
    
}
