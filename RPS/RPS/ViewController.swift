//
//  ViewController.swift
//  RPS
//
//  Created by Hugo Cruz on 4/4/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signAppLabel: UILabel!
    @IBOutlet weak var stateGameLabel: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signAppLabel.text = "🤖"
        stateGameLabel.text = "Rock, Paper or Scissors"
    }

    @IBAction func rockButtonAction(_ sender: Any) {
        updateState(option: .rock)
    }
    
    @IBAction func paperButtonAction(_ sender: Any) {
        updateState(option: .paper)
    }
    
    @IBAction func scissorsButtonAction(_ sender: Any) {
        updateState(option: .scissors)
        
    }
    
    @IBAction func playAgainButtonAction(_ sender: Any) {
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        stateGameLabel.text = "Rock, Paper or Scissors"
        signAppLabel.text = "🤖"
    }
    
    func updateState(option: Sign) {
        let cpuOption = randomSign()
        
        let result = gameStateFinal(signPlayer: option, signComputer: cpuOption)
        
        if result == .lose {
            view.backgroundColor = #colorLiteral(red: 0.846742928, green: 0.1176741496, blue: 0, alpha: 1)
            stateGameLabel.text = "You lose"
        } else if result == .win {
            view.backgroundColor = #colorLiteral(red: 0.8323200345, green: 0.9884948134, blue: 0.6632229686, alpha: 1)
            stateGameLabel.text = "You win"
        } else if result == .draw {
            view.backgroundColor = #colorLiteral(red: 1, green: 0.88492769, blue: 0.5705334544, alpha: 1)
            stateGameLabel.text = "Draw"
        }
        
        if cpuOption == .rock {
            signAppLabel.text = "👊"
        } else if cpuOption == .paper {
            signAppLabel.text = "✋"
        } else {
            signAppLabel.text = "✌️"
        }
    }
    
}

