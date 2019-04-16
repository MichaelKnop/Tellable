//
//  SecondViewController.swift
//  Tellable
//
//  Created by Michael Knop on 4/8/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit

class Global {
    var verbInput:String = ""
    var adjectiveInput:String = ""
    var nounInput:String = ""
    var pickerVar = String()
    
}
let global = Global()

class SecondViewController:UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    @IBOutlet weak var adjectiveType: UITextField!
    @IBOutlet weak var nounType: UITextField!
    @IBOutlet weak var verbType: UITextField!
    @IBAction func go(_ sender: UIButton) {
        let segues = ["pushRed", "pushBlue"]
        global.verbInput = verbType.text!
        global.adjectiveInput = adjectiveType.text!
        global.nounInput = nounType.text!
        
        let index = Int(arc4random_uniform(UInt32(segues.count)))
        
        let segueName = segues[index]
        
        self.performSegue(withIdentifier: segueName, sender: self)
    }
    
    let items = ["Nancy", "Bill", "Roland", "Kiara"]
    var selection:String!
    @IBOutlet weak var Picker: UIPickerView!
    // four functions associated with pickerview
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        global.pickerVar = selection

    }
    
    override func viewDidLoad() {
        Picker.delegate = self
        Picker.dataSource = self
        
        super.viewDidLoad()

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
