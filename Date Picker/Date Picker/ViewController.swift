//
//  ViewController.swift
//  Date Picker
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dpDate: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        dpDate.setValue(UIColor.red, forKey: "textColor")
        dpDate.minimumDate = Date()
        dpDate.date = Date()
        
    }

    @IBAction func dpDate_VC(_ sender: Any) {
        
        let date = dpDate.date
        
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy HH:mm"
        print(df.string(from: date))
    }
    
}

