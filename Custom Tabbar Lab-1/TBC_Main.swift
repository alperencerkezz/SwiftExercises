//
//  TBC_Main.swift
//  Custom Tabbar Lab-1
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class TBC_Main: UITabBarController {
    @IBOutlet var tbVSpecial: UIView!
    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var ivFavorites: UIImageView!
    @IBOutlet weak var ivAccount: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tbVSpecial)
        
        tbVSpecial.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            tbVSpecial.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 44),
            tbVSpecial.heightAnchor.constraint(equalToConstant: 84),
            tbVSpecial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tbVSpecial.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        
        ])
        
        tabBar.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwitchTabs(_ sender: Any) {
        
        
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
