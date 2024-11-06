//
//  TBC_Main.swift
//  Custom Tabbar Controller
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class TBC_Main: UITabBarController {
    @IBOutlet var tbvSpecial: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tbvSpecial)
        
        tbvSpecial.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tbvSpecial.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 34),
            tbvSpecial.heightAnchor.constraint(equalToConstant: 104),
            tbvSpecial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tbvSpecial.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        
        ])
    }
    
    
    @IBAction func SwitchTabs(_ sender: Any) {
        let index = (sender as! UIButton).tag
        Switch(tabIndex: index)
    }
    
    func Switch(tabIndex: Int) {
        btn1.backgroundColor = .clear
        btn2.backgroundColor = .clear
        
        switch tabIndex {
        case 0:
            btn1.backgroundColor = .blue
        case 1:
            btn2.backgroundColor = .blue
        default:
            btn1.backgroundColor = .blue
        }
        
        selectedIndex = tabIndex
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
