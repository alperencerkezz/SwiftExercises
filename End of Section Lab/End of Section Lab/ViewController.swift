//
//  ViewController.swift
//  End of Section Lab
//
//  Created by Alperen Çerkez on 14.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var sbList: UISearchBar!
    @IBOutlet weak var tvList: UITableView!
    
    var wholeList: [Article] = []
    var loadedList: [Article] = []
    var filteredList: [Article] = []
    
    var page = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var a: Article
        
        for i in 0..<105 {
            a = Article(title: "Title\(i)", shortDescription: "Title\(i)", description: "Description\(i)")
            wholeList.append(a)
            
            if i<20 {
                loadedList.append(a)
            }
        }
        
        filteredList.append(contentsOf: wholeList)
        tvList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = Bundle.main.loadNibNamed("TVC_Article", owner: self, options: nil)?.first as! TVC_Article
        row.lblTitle.text = loadedList[indexPath.row].Title
        row.lblShortDescription.text = loadedList[indexPath.row].ShortDescription
        
        return row
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if((scrollView.contentOffset.y + scrollView.frame.size.height)) > (scrollView.contentSize.height * 0.9) {
            
            addElement()
        }
    }
    
    func addElement() {
        
    }
    


}

