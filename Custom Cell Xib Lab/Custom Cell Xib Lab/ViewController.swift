//
//  ViewController.swift
//  Custom Cell Xib Lab
//
//  Created by Alperen Çerkez on 10.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tvPeople: UITableView!
    var PersonList: [Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PersonList.append(Person(name: "Name1", surname: "Surname1", gender: "M"))
        PersonList.append(Person(name: "Name2", surname: "Surname2", gender: "F"))
        PersonList.append(Person(name: "Name3", surname: "Surname3", gender: "M"))
        
        tvPeople.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TVC_Person", owner: self, options: nil)?.first as! TVC_Person
        
        let person = PersonList[indexPath.row]
        cell.lblNameSurname.text = person.Name + " " + person.Surname
        
        if person.Gender == "M" {
            cell.ivGender.image = UIImage(named: "male")
        } else {
            cell.ivGender.image = UIImage(named: "female")
        }
        
        return cell
    }


}

