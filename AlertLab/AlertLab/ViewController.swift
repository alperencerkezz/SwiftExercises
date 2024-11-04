//
//  ViewController.swift
//  AlertLab
//
//  Created by Alperen Çerkez on 4.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        // ShowAlert()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ShowAlert()
    }
    
    func ShowAlert()
    {
        let ac = UIAlertController(title: "Title", message: "Alert message", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "OK", style: .default) {
            UIAlertAction in
            
            print("OK button clicked")
        })
        
        ac.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
        ac.addAction(UIAlertAction(title: "Back2", style: .default, handler: nil))
        
        present(ac,animated: true, completion: nil )
    }


}

