//
//  ViewController.swift
//  Core Data Project
//
//  Created by Alperen Çerkez on 15.11.2024.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AddToDo(title: "Title 1", contents: "Content 1")
        
    }
    
    func AddToDo(title: String, contents: String) {
        
        let context = FetchContext()
        let entity = NSEntityDescription.entity(forEntityName: "ToDo", in: context)
        
        let todo = NSManagedObject(entity: entity!, insertInto: context)
        
        todo.setValue(title, forKey: "title")
        todo.setValue(contents, forKey: "contents")
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
    }
    
    
    func FetchContext()-> NSManagedObjectContext {
        
        return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }


}

