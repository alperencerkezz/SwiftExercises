//
//  ViewController.swift
//  Firebase
//
//  Created by Alperen Çerkez on 18.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvList: UITableView!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if Auth.auth().currentUser != nil {
            btnLogin.isHidden = true
        }
    }


}

