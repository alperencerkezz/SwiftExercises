//
//  ViewController.swift
//  Picker View
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pvList: UIPickerView!
    
    var list = ["Element 1","Element 2","Element 3","Element 4","Element 5","Element 6","Element 7"]
    var list2 = ["E 1","E 2","E 3","E 4","E 5","E 6","E 7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pvList.selectRow(1, inComponent: 0, animated: true)
        pvList.selectRow(3, inComponent: 1, animated: true)
    }

    @IBAction func btnUpdate_TUI(_ sender: Any) {
        list.remove(at: 0)
        pvList.reloadAllComponents()
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return list.count
        }
            
        
        return list2.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        if component == 0 {
            return NSAttributedString(string: list[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        return NSAttributedString(string: list2[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print(list[row])
        } else {
            print(list2[row])
        }
        
        
    }
    
}

