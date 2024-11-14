//
//  ViewController.swift
//  End of Section Lab
//
//  Created by Alperen Çerkez on 14.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    

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
            
            AddElement()
        }
    }
    
    func AddElement() {
        
        if (((page + 1)*20) < filteredList.count) {
            
            for i in ((page + 1)*20)..<((page + 2)*20) {
                
                if i < filteredList.count {
                    
                    loadedList.append(filteredList[i])
                }
            }
            
            page += 1
            tvList.reloadData()
            
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        page = 0
        
        filteredList = searchText.isEmpty ? wholeList: wholeList.filter({
            
            (article: Article)-> Bool in
            return article.Title.range(of: searchText, options: .caseInsensitive) != nil || article.ShortDescription.range(of: searchText, options: .caseInsensitive) != nil
        })
        
        loadedList.removeAll()
        
        for i in 0..<filteredList.count {
            
            if i<20 {
                
                loadedList.append(filteredList[i])
            }
        }
        
        tvList.reloadData()
    }

}

