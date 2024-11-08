//
//  ViewController.swift
//  Custom Cell Xib
//
//  Created by Alperen Çerkez on 8.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    var list = ["Element1", "Element2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TVC_Row", owner: self, options: nil)?.first as! TVC_Row
        
        cell.lblText.text = list[indexPath.row]
        
        return cell
    }
}

