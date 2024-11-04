//
//  ViewController.swift
//  Switch Screens with Identifier
//
//  Created by Alperen Çerkez on 4.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_SwitchSegue_TUI(_ sender: Any) {
        performSegue(withIdentifier: "sgSwitch", sender: nil)
    }
    @IBAction func btnSwitchIdentifier_TUI(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main.storyboard", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2")
        
        present(vc, animated: true)
    }
    
}

