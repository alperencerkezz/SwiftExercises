//
//  ViewController.swift
//  Keychain Structure
//
//  Created by Alperen Çerkez on 19.11.2024.
//

import UIKit
import Security

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Add()
        Read()
        Update()
        Read()
        Delete()
        Read()
    }
    
    func Add()
    {
        let query = [
            kSecValueData: "added value".data(using: .utf8)!,
            kSecAttrAccount: "username",
            kSecClass: kSecClassGenericPassword
        ] as CFDictionary
        
        let situation = SecItemAdd(query, nil)
        
        print(situation)
    }
    
    func Read()
    {
        let query = [
            kSecValueData: "added value".data(using: .utf8)!,
            kSecAttrAccount: "username",
            kSecClass: kSecClassGenericPassword,
            kSecReturnData: true
        ] as CFDictionary
        
        var ref: AnyObject? = nil
        
        let situation = SecItemCopyMatching(query as CFDictionary, &ref)
        
        if situation == 0
        {
            let value = String(data: ref as! Data,   encoding: .utf8)
            print(value)
        }
    }
    
    func Update()
    {
        let query = [
            kSecValueData: "added value".data(using: .utf8)!,
            kSecAttrAccount: "username",
        ] as CFDictionary
        
        let data = [
            kSecValueData: "updated value".data(using: .utf8)!
        ] as CFDictionary
        
        let situation = SecItemUpdate(query, data)
        
        print(situation )
    }

    func Delete()
    {
        let query = [
            kSecValueData: "added value".data(using: .utf8)!,
            kSecAttrAccount: "username",
        ] as CFDictionary
        
        let situation = SecItemDelete(query)
        print(situation)
    }

}

