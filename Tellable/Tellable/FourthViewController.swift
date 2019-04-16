//
//  FourthViewController.swift
//  Tellable
//
//  Created by Michael Knop on 4/15/19.
//  Copyright © 2019 Michael Knop. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var pickerAnswer: UILabel!
    @IBOutlet weak var adjectiveAnswer: UILabel!
    @IBOutlet weak var verbAnswer: UILabel!
    @IBOutlet weak var nounAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        verbAnswer.text = "\(global.verbInput)"
        adjectiveAnswer.text = "\(global.adjectiveInput)"
        nounAnswer.text = "\(global.nounInput)"
        pickerAnswer.text = "\(global.pickerVar)"

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
