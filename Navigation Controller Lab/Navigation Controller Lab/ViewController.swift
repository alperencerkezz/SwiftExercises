//
//  ViewController.swift
//  Navigation Controller Lab
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin_TUI(_ sender: Any) {
        
        if tfUsername.text == "a" && tfPassword.text == "a" {
            performSegue(withIdentifier: "sgHomePage", sender: nil)
            navigationController?.viewControllers.remove(at: 0)
        } else {
            performSegue(withIdentifier: "sgSignup", sender: nil)
        }
        
    }
    
}

