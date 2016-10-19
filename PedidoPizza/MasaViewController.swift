//
//  MasaViewController.swift
//  PedidoPizza
//
//  Created by Monse on 17/10/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{

  //viewControllermasa
    @IBOutlet weak var mPicker: UIPickerView!
    var pickerMasaData: [String] = [String]()
    var tamañoSelected = ""
    var masaSelected = ""
    var tamañoSel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       self.mPicker.delegate = self
       self.mPicker.dataSource = self
       pickerMasaData = ["Delgada", "Crujiente", "Gruesa"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   override func viewWillAppear(animated: Bool) {
        tamañoSel = tamañoSelected
        //print(tamañoSelected)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quesoView = segue.destinationViewController as! QuesoViewController
        quesoView.masaSelected = masaSelected
        quesoView.tamañoSelected = tamañoSel
    }
    // The number of columns of data
   func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerMasaData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        masaSelected =  pickerMasaData[row]
        return pickerMasaData[row]
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
