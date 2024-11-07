//
//  ViewController.swift
//  Picker View
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pvList: UIPickerView!
    
    var list = ["Element 1","Element 2","Element 3","Element 4","Element 5","Element 6","Element 7",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnUpdate_TUI(_ sender: Any) {
        list.remove(at: 0)
        pvList.reloadAllComponents()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: list[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(list[row])
    }
    
}

