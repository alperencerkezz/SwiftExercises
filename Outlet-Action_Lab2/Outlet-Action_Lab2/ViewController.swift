    //
//  ViewController.swift
//  Outlet-Action_Lab2
//
//  Created by Alperen Çerkez on 2.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfUsername: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogin_TUI(_ sender: Any) {
        if tfUsername.text != "" && tfPassword.text != "" {
            if tfUsername.text == "a" && tfPassword.text == "s" {
                print("Successful login")
            } else {
                print("Login failed")
            }
        } else {
            print("Username and password can not be empty")
        }
    }
    
    
}

