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
        
        AddToDo(title: "Title 2", contents: "Content 1")
        FetchToDo()
        
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
    
    func FetchToDo() {
        
        let fetchRequest: NSFetchRequest<ToDo> = ToDo.fetchRequest
        
        do {
            let toDos = try FetchContext().fetch(fetchRequest)
            
            for todo in toDos {
                print("Title:  \(todo.title!) Content: \(todo.content!)")
            }
        }
        catch {
            print("Error")
        }
    }


}

