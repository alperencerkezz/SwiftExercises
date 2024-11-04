//
//  ViewController.swift
//  Switch Screens with Segue
//
//  Created by Alperen Çerkez on 4.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("first did load")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("first did appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("first disappear")
    }


}

