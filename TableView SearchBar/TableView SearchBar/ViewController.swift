//
//  ViewController.swift
//  TableView SearchBar
//
//  Created by Alperen Çerkez on 12.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    
    @IBOutlet weak var tfSearch: UITextField!
    @IBOutlet weak var sbList: UISearchBar!
    @IBOutlet weak var tvList: UITableView!
    
    var fullList = ["Apple", "Pear", "Orange", "Lemon", "Plum", "Pineapple", "Apricot"]
    var filteredList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredList.append(contentsOf: fullList)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell()
        row.textLabel?.text = filteredList[indexPath.row]
        return row
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredList = searchText.isEmpty ? fullList : fullList.filter({(str: String)-> Bool in
            
            return str.range(of: searchText, options: .caseInsensitive) != nil
        })
        
        tvList.reloadData()
    }
    
    @IBAction func tfSearch_EC(_ sender: Any) {
        
        filteredList.removeAll()
        
        if tfSearch.text!.isEmpty {
            filteredList.append(contentsOf: fullList)
        } else {
            for fruit in fullList {
                if fruit.range(of: tfSearch.text!) != nil {
                    filteredList.append(fruit)
                }
            }
        }
        
        tvList.reloadData()
        
    }
    


}

