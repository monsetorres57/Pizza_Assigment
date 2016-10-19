//
//  ConfirmarViewController.swift
//  PedidoPizza
//
//  Created by Monse on 18/10/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class ConfirmarViewController: UIViewController {

    var tamañoSelected = ""
    var masaSelected = ""
    var quesoSelected = ""
    var ingredientesSelected = ""
    
    var tamañoSel = ""
    var masaSel = ""
    var quesoSel = ""
    var ingSel = ""
    @IBOutlet weak var Confirmar: UIButton!
    @IBOutlet weak var Lmensaje: UILabel!
    @IBOutlet weak var confPizza: UITextView!
    @IBAction func Confirmar(sender: AnyObject) {
         confPizza.text  = "Su pizza estara lista en 30 min 😀"
        
    }
    @IBOutlet weak var Cancelar: UIButton!
    @IBAction func cancelar(sender: AnyObject) {
         confPizza.text  = "Vuelva a registrar su pedido 😉"

    }
    override func viewDidLoad() {
        super.viewDidLoad()
               // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        tamañoSel = tamañoSelected
        masaSel = masaSelected
        quesoSel = quesoSelected
        ingSel = ingredientesSelected
        print("ingredientes \(ingSel)")
        if (ingSel != "" ) {
            print("Su piza es : \n \(tamañoSel) con masa \(masaSel) de queso \(quesoSel) \(ingSel)")
             confPizza.text = "Su pizza es : \(tamañoSel) con masa \(masaSel) de queso \(quesoSel) con ingredientes \(ingSel)"
        }else{
            confPizza.text = "Debe seleccionar al menos un ingrediente"
        }
        //self.Lmensaje.text = ("Su piza es : \(tamañoSel) con masa \(masaSel) de queso \(quesoSel) " )
        //[self.Lmensaje.sizeToFit()]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
