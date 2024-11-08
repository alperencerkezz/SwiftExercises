//
//  ViewController.swift
//  ViewController TableView Lab
//
//  Created by Alperen Çerkez on 8.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var tfText: UITextField!
    @IBOutlet weak var tvList: UITableView!
    
    var list: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnAdd_TUI(_ sender: Any) {
        list.append(tfText.text!)
        tvList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            list.remove(at: indexPath.row)
            tvList.reloadData()
        }
    }
    
}

