//
//  TamanoViewController.swift
//  PedidoPizza
//
//  Created by Monse on 17/10/16.
//  Copyright © 2016 Monse. All rights reserved.
//

import UIKit

class TamanoViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
//viewController tamaño pizza
    @IBOutlet weak var pickerSize: UIPickerView!
    var pickerData: [String] = [String]()
    var tamaño = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        
        self.pickerSize.delegate = self
        self.pickerSize.dataSource = self
        
        pickerData = ["Chica", "Mediana", "Grande","Super"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masaView = segue.destinationViewController as! MasaViewController
        masaView.tamañoSelected=tamaño
    }
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tamaño = pickerData[row]
        return pickerData[row]
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
