//
//  ViewController.swift
//  Data Transfer Between Screens
//
//  Created by Alperen Çerkez on 5.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfSurname: UITextField!
    @IBOutlet weak var tfCode: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSwitch_TUI(_ sender: Any) {
        
        if tfCode.text == "123" {
            performSegue(withIdentifier: "sgSwitch", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgSwitch" {
            let vc2 = segue.destination as! VC2
            vc2.NameSurname = tfName.text! + " " + tfSurname.text!
        }
    }
    
}

