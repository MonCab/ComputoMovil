//
//  DetalleViewController.swift
//  SegundoParcial
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var reputationButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    @IBOutlet weak var redButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    @IBAction func reputationFunction(_ sender: Any) {
        performSegue(withIdentifier: "discos", sender: reputationButton)
    }
    @IBAction func nineFunction(_ sender: Any) {
                performSegue(withIdentifier: "discos", sender: nineButton)
    }
    
    @IBAction func redFunction(_ sender: Any) {
                performSegue(withIdentifier: "discos", sender: redButton)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender  as? UIButton else {return}
        let vc = segue.destination as? TableViewController
        if sender == reputationButton{
            segue.destination.navigationItem.title = "reputation"
            vc?.songNames = ["... Ready for It?","End Game (Ft. Ed Sheeran & Future)","I Did Something Bad","Don't Blame Me","Delicate","Look What You Made Me Do","So It Goes...","Gorgeous","Getaway Car","King Of My Heart","Dancing With Our Hands Tied","Dress","This Is Why We Can't Have Nice Things","Call It What You Want","New Year's Day"]
        }else if sender == nineButton{
            segue.destination.navigationItem.title = "1989"
            vc?.songNames = ["Welcome to New York", "Blank Space", "Style", "Out of the Woods", "All You Had to Do Was Stay", "Shake It Off", "I Wish You Would", "Bad Blood", "Wildest Dreams", "How You Get the Girl", "This Love", "I Know Places", "Clean"]
        }else if sender == redButton{
            segue.destination.navigationItem.title = "Red"
            vc?.songNames = ["State of Grace", "Red", "Treacherous", "I Knew You Were Trouble", "All Too Well", "22", "I Almost Do", "We Are Never Ever Getting Back Together", "Stay Stay Stay", "The Last Time", "Holy Ground", "Sad Beautiful Tragic", "The Lucky One","Everything Has Changed", "Starlight", "Begin Again"]
            
        }
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
