//
//  ViewController.swift
//  NotificationCenter Project
//
//  Created by Alperen Çerkez on 20.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(GetNotification), name: .notification1, object: nil)
        
    }
    
    @objc func GetNotification(_ notification : Notification)
    {
        print("Notification received")
        print(notification.userInfo!["data"])
    }

}

