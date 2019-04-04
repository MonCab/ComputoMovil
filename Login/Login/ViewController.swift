//
//  ViewController.swift
//  Login
//
//  Created by Macbook on 4/3/19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if (sender == forgotPasswordButton) {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if (sender == forgotUserNameButton) {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else {
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }

    @IBAction func forgotUserNameAction(_ sender: Any) {
        performSegue(withIdentifier: "segueForgotten", sender: forgotUserNameButton)
    }
    
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "segueForgotten", sender: forgotPasswordButton)
    }
}

