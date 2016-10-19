//
//  QuesoViewController.swift
//  PedidoPizza
//
//  Created by Monse on 18/10/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var quesoPicker: UIPickerView!
    var pickerQuesoData: [String] = [String]()
    var tamañoSelected = ""
    var masaSelected = ""
    var quesoSelected = ""
    var tamañoSel = ""
    var masaSel = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
        self.quesoPicker.delegate = self
        self.quesoPicker.dataSource = self
        pickerQuesoData = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        tamañoSel = tamañoSelected
        masaSel = masaSelected
        print(tamañoSel)
        print(masaSel)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let ingView = segue.destinationViewController as! IngViewController
        ingView.tamañoSelected = tamañoSel
        ingView.masaSelected = masaSel
        ingView.quesoSelected = quesoSelected
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerQuesoData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print(pickerQuesoData[row])
        quesoSelected = pickerQuesoData[row]
        return pickerQuesoData[row]
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
