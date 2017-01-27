//
//  ViewController.swift
//  Two Players Game
//
//  Created by OSX on 27.01.2017.
//  Copyright © 2017 OSX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var text: UILabel!
    @IBOutlet var hpPlayer1Lbl: UILabel!
    @IBOutlet var hpPlayer2Lbl: UILabel!
    @IBOutlet var attackP2Button: UIButton!
    @IBOutlet var attackP1Button: UIButton!
    @IBOutlet var restartButton: UIButton!
    
    var player1: Player = Player(name: "Player 1", hp: 100, attackPwr: 14)
    var player2: Player = Player(name: "Player 2", hp: 100, attackPwr: 14)

    override func viewDidLoad() {
        super.viewDidLoad()
        resetGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func restartGamePressed(_ sender: Any) {
        resetGame()
    }

    @IBAction func player2AttackButton(_ sender: Any) {
        if player1.attemptAttack(attackPwr: 14) {
            text.text = "Player 1 -14HP"
            hpPlayer1Lbl.text = "\(player1.hp) HP"
            if !player1.isAlive{
                gameOver(winner: "Player 2")
            }
        }
        
    }
    
    @IBAction func player1AttackButton(_ sender: Any) {
        if player2.attemptAttack(attackPwr: 14){
            text.text = "Player 2 -14HP"
            hpPlayer2Lbl.text = "\(player2.hp) HP"
            if !player2.isAlive{
                gameOver(winner: "Player 1")
            }
        }
    }
    
    func resetGame(){
        text.text = ""
        hpPlayer1Lbl.text = "100HP"
        hpPlayer2Lbl.text = "100HP"
        restartButton.isHidden = true
        attackP2Button.isHidden = false
        attackP1Button.isHidden = false
        self.player1 = Player(name: "Player 1", hp: 100, attackPwr: 14)
        self.player2 = Player(name: "Player 1", hp: 100, attackPwr: 14)
    }
    
    func gameOver(winner name: String){
        text.text = "Winner \(name)"
        restartButton.isHidden = false
        attackP1Button.isHidden = true
        attackP2Button.isHidden = true
    }
}

