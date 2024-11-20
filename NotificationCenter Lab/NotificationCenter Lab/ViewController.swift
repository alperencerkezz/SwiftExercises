//
//  ViewController.swift
//  NotificationCenter Lab
//
//  Created by Alperen Çerkez on 20.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSituation: UILabel!
    @IBOutlet weak var tfText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(tfStartEditing), name: UITextField.textDidBeginEditingNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(tfTextChanging), name: UITextField.textDidChangeNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardOpened), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardClosed), name: UIResponder.keyboardDidHideNotification, object: nil)
    }

    @IBAction func btnClose_TUI(_ sender: Any) {
        tfText.endEditing(true)
    }
    
    @objc func tfStartEditing()
    {
        lblSituation.text = "tf active, editing started"
    }
    
    @objc func tfTextChanging()
    {
        lblSituation.text = "tf active, editing started"
    }
    
    @objc func keyboardOpened()
    {
        lblSituation.text = "keyboard opened"
    }
    
    @objc func keyboardClosed()
    {
        lblSituation.text = "keyboard closed"
    }
}

