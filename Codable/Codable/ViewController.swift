//
//  ViewController.swift
//  Codable
//
//  Created by Alperen Çerkez on 16.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p = Person(Name: "Name 1", Surname: "Soyad 1")
        
        let encoder = JSONEncoder()
        
        let json = try! encoder.encode(p    )
        
        let strJson = String(data: json, encoding: .utf8)
        
        print(strJson)
        
        let decoder = JSONDecoder()
        
        let d = try! decoder.decode(Person.self, from: json)
        
        print(d.Name)
    }


}

struct Person: Decodable, Encodable
{
    var Name: String
    var Surname: String
    
    enum CodingKeys: String, CodingKey
    {
        case Name = "Name"
        case Surname = "Surname"
    }
}

