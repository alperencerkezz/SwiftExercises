//
//  ViewController.swift
//  UserDefaults
//
//  Created by Alperen Çerkez on 15.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func WriteUserDef(value: Any, key: String) {
        
        let userDefaults = UserDefaults.standard
        UserDefaults.setValue(value, forKey: key)
        userDefaults.synchronize()
    }
    
    func ReadUserDef(key: String)-> String {
        
        if let deger = UserDefaults.standard.string(forKey: key) {
            
            return deger
        }
        
        return ""
    }
    
    func DeleteUserDef(key: String) {
        
        if UserDefaults.standard.object(forKey: key) != nil {
            
            UserDefaults.standard.removeObject(forKey: key)
            UserDefaults.standard.synchronize()
        }
    }
}

