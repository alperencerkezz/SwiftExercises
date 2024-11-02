//
//  ViewController.swift
//  Outlet-Action_Lab
//
//  Created by Alperen Çerkez on 2.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblScreenTime: UILabel!
    @IBOutlet weak var lblClickTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let str = fetchTime()
        lblScreenTime.text = str
    }

    @IBAction func btnClick_TUI(_ sender: Any) {
        lblClickTime.text = fetchTime()
    }
    
    func fetchTime()-> String
    {
        var zaman = Date()
        
        let df = DateFormatter()
        df.dateFormat = "dd.MM.yyyy HH:mm:ss"
        
        return df.string(from: zaman)
    }
    
}

