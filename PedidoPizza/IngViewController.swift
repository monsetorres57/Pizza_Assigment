//
//  IngViewController.swift
//  PedidoPizza
//
//  Created by Monse on 18/10/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class IngViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Jamon: UISwitch!
  
    @IBOutlet weak var cebolla: UISwitch!

    @IBOutlet weak var pavo: UISwitch!

    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var atun: UISwitch!
    @IBOutlet weak var aceitunas: UISwitch!
    
    @IBOutlet weak var pina: UISwitch!
 
    @IBOutlet weak var salchicha: UISwitch!

    @IBOutlet weak var anchoas: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    var quesoSelected = ""
    var tamañoSelected = ""
    var masaSelected = ""
    var ingredientes = ""
    var tamañoSel = ""
    var masaSel = ""
    var quesoSel = ""
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var terminar: UIButton!
    @IBAction func fin(sender: AnyObject) {
        ingredientes = ""
        if (Jamon.on){
            ingredientes = ingredientes+" "+"Jamon"
          
        }
        if(salchicha.on){
             ingredientes = ingredientes+" "+"Salchicha"
        }
        if(pavo.on){
            ingredientes = ingredientes+" "+"Pavo"
        }
        if(cebolla.on){
            ingredientes = ingredientes+" "+"Cebolla"
        }
        if(atun.on){
            ingredientes = ingredientes+" "+"Atún"
        }
        if(pimiento.on){
            ingredientes = ingredientes+" "+"Pimiento"
        }
        if(pina.on){
            ingredientes = ingredientes+" "+"Piña"
        }
        if(anchoas.on){
            ingredientes = ingredientes+" "+"Anchoas"
        }
        if(peperoni.on){
            ingredientes = ingredientes+" "+"Peperoni"
        }
        
         print(ingredientes)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let confirmView = segue.destinationViewController as! ConfirmarViewController
        confirmView.tamañoSelected = tamañoSel
        confirmView.masaSelected = masaSel
        confirmView.quesoSelected = quesoSel
        confirmView.ingredientesSelected = ingredientes
        
    }
    override func viewWillAppear(animated: Bool) {
        tamañoSel = tamañoSelected
        masaSel = masaSelected
        quesoSel = quesoSelected
        print("valores \(tamañoSel) \(masaSel) \(quesoSel)")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
