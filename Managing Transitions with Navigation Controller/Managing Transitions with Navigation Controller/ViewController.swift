//
//  ViewController.swift
//  Managing Transitions with Navigation Controller
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func btnSwitchWithCode_TUI(_ sender: Any) {
        performSegue(withIdentifier: "SwitchWithCode", sender: nil)
    }
}

