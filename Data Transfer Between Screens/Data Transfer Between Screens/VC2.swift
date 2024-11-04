//
//  VC2.swift
//  Data Transfer Between Screens
//
//  Created by Alperen Çerkez on 5.11.2024.
//

import UIKit

class VC2: UIViewController {

    var NameSurname: String?
    
    @IBOutlet weak var lblNameSurname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblNameSurname.text = NameSurname
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
