//
//  PurchaseViewController.swift
//  SegundoParcial
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class PurchaseViewController: UIViewController {
    var hasPromo: Bool = false
    var numGorras:Int = 0
    var numJumper:Int = 0
    
    @IBOutlet weak var totalField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        var x:Double = 0.0
            x = (Double(numGorras) * 250.0) + (Double(numJumper) * 500.0)
        if hasPromo{
            x *= 0.5
        }
        else{
            x *= 1.0
        }
        totalField.text? = String(x)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
