//
//  TriviaViewController.swift
//  SegundoParcial
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
    @IBOutlet weak var switchThree: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func revisarButton(_ sender: Any) {
        if switchOne.isOn && switchTwo.isOn{
            performSegue(withIdentifier: "Ganar", sender: nil)
        } else {
            performSegue(withIdentifier: "Perder", sender: nil)
        }
    }
    
    @IBAction func unwindToTrivia(unwindSegue: UIStoryboardSegue){
        switchThree.isOn = false
        switchTwo.isOn = false
        switchOne.isOn = false
    }
    
}
