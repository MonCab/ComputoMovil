//
//  ShopViewController.swift
//  SegundoParcial
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var cantidadGorra: UITextField!
    @IBOutlet weak var cantidadJumper: UITextField!
    @IBOutlet weak var promoCode: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PurchaseViewController{
            let vc = segue.destination as? PurchaseViewController
            var aux : Int = 0
            if cantidadGorra.hasText{
                aux = Int(cantidadGorra.text!)!
                if aux >= 0 && aux <= 10{
                    vc?.numGorras = aux
                }else{
                    let alert = UIAlertController(title: "Error", message: "Compra válida : Hasta 10 artículos", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
            }
            if cantidadJumper.hasText{
                aux = Int(cantidadJumper.text!)!
                if aux >= 0 && aux <= 10{
                    vc?.numJumper = aux
                }else{
                    let alert = UIAlertController(title: "Error", message: "Compra válida : Hasta 10 artículos", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
                
            }
            if !cantidadJumper.hasText && !cantidadGorra.hasText{
                let alert = UIAlertController(title: "Error", message: "No ha agregado articulos", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                self.present(alert, animated: true)
            }
            if promoCode.hasText{
                if promoCode.text! == "Taylor"{
                    vc?.hasPromo = true
                }else{
                    //Falta implementar message Box
                    let alert = UIAlertController(title: "Error", message: "Codigo incorrecto, por favor revisar", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                    self.present(alert, animated: true)
                }
            }else{
                vc?.hasPromo = false
            }
            
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
