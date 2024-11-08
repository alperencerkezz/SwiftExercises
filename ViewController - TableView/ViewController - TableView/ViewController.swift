//
//  ViewController.swift
//  ViewController - TableView
//
//  Created by Alperen Çerkez on 8.11.2024.
//

import UIKit

class ViewController: UIViewController {
   
    var list = ["Element1", "Element2"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }

}

