//
//  ViewController.swift
//  TableView Paging
//
//  Created by Alperen Çerkez on 12.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tvList: UITableView!
    
    var list: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addElement()
        
    }
    
    func addElement()
    {
        let listWillBeAdded = ["Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element", "Element"]
        
        list.append(contentsOf: listWillBeAdded)
        
        tvList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell()
        
        row.textLabel?.text = list[indexPath.row] + " \(indexPath.row)"
        
        return row
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if ((scrollView.contentOffset.y + scrollView.frame.size.height) > (scrollView.contentSize.height * 0.9)) {
            
            addElement()
        }
        
        
    }
    
}
