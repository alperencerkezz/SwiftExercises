//
//  VC_Second.swift
//  Switch Screens with Segue
//
//  Created by Alperen Çerkez on 4.11.2024.
//

import UIKit

class VC_Second: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("second did load")

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("second did appear")
    }
    
    @IBAction func btnBack_TUI(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
