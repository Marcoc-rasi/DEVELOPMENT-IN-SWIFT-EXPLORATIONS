//
//  ViewController.swift
//  RPS-Marcocrasi
//
//  Created by MacBook 28 on 19/05/23.
//

import UIKit

class ViewController: UIViewController {
    //Label conetions
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var currentGameState: UILabel!
    //Button conections
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(gameState: .Start)
    }

    @IBAction func rockButtonPressed(_ sender: Any) {
        play(sign: .Rock)
    }
    
    @IBAction func paperButtonPressed(_ sender: Any) {
        play(sign: .Paper)
    }
    
    @IBAction func scissorsButtonPressed(_ sender: Any) {
        play(sign: .Scissors)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        updateUI(gameState: .Start)
    }
    
    func updateUI(gameState: GameState){
        currentGameState.text = gameState.stateDescription
        switch gameState {
        case .Start:
            appSign.text = "🤖"
            view.backgroundColor = UIColor.green
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isHidden = false
            paperButton.isEnabled = true
            scissorsButton.isHidden = false
            scissorsButton.isEnabled = true
        case .Victory:
            view.backgroundColor = UIColor.yellow
        case .Lose:
            view.backgroundColor = UIColor.red
        case .Tie:
            view.backgroundColor = UIColor.blue
        }
    }
    
    func play(sign: Sign){
        let currentGameSign:Sign = randomSign()
        let gameState = sign.gameResult(VS: currentGameSign)
        updateUI(gameState: gameState)
        appSign.text = currentGameSign.emoji
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        if sign.emoji == "👊"{
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        }else if sign.emoji == "🤚" {
            rockButton.isHidden = true
            scissorsButton.isHidden = true
        }else if sign.emoji == "✌️" {
            paperButton.isHidden = true
            rockButton.isHidden = true
        }
        playAgainButton.isHidden = false
        playAgainButton.isEnabled = true
    }
}
    



