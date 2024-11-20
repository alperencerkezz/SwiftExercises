//
//  ViewController2.swift
//  NotificationCenter Project
//
//  Created by Alperen Çerkez on 20.11.2024.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btn_CreateNotification_TUI(_ sender: Any) {
        
        let data = ["data": "Sent text"]
        
        NotificationCenter.default.post(name: .notification1, object: nil, userInfo: data)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
