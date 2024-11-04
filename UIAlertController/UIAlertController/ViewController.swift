//
//  ViewController.swift
//  UIAlertController
//
//  Created by Alperen Çerkez on 2.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ShowAlert()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated) // Remember to call super here
        ShowAlert()
    }
    
    func ShowAlert() {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            print("OK button clicked")
        }))
        
        alertController.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}
