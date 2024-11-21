//
//  viewModel.swift
//  MVVM Lab-1
//
//  Created by Alperen Çerkez on 21.11.2024.
//

import Foundation
struct ViewModelPerson {
    let person: Person
    
    var Name: String {return person.Name}
    var Surname: String{return person.Surname}
}

struct ViewModelPersonList {
    var People = [Person]()
    
    func personCount()->Int
    {
        return People.count
    }
    
    func fetchPerson(index: Int)->ViewModelPerson
    {
        let person = People[index]
        return ViewModelPerson(person: person)
    }
    mutating func fillPeople()
    {
        People.append(Person(Name: "Name1", Surname: "Surname1"))
        People.append(Person(Name: "Name2", Surname: "Surname2"))
        People.append(Person(Name: "Name3", Surname: "Surname3"))
    }
}
