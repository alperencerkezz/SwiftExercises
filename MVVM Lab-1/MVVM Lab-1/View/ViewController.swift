//
//  ViewController.swift
//  MVVM Lab-1
//
//  Created by Alperen Çerkez on 21.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var People = [Person]()
    var viewModelPersonList = ViewModelPersonList()

    @IBOutlet weak var tvList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModelPersonList.fillPeople()
        tvList.reloadData()
        
        fillPeople()
        
        tvList.reloadData()
    }
    func fillPeople()
    {
        People.append(Person(Name: "Name1", Surname: "Surname1"))
        People.append(Person(Name: "Name2", Surname: "Surname2"))
        People.append(Person(Name: "Name3", Surname: "Surname3"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return People.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = UITableViewCell()
        let vmPerson = viewModelPersonList.fetchPerson(index: indexPath.row)
        
        
        row.textLabel?.text = "\(vmPerson.Name) \(vmPerson.Surname)"
        return row
    }


}

