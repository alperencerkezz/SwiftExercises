//
//  ViewController.swift
//  Outlet
//
//  Created by Alperen Çerkez on 2.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblText: UILabel!
    override func loadView() {
        
        super.loadView()
        // lblText.text = "Changed"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func btnDegistir_TUI(_ sender: Any) {
        print("clicked")
    }
    

}

