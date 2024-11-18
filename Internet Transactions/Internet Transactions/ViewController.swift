//
//  ViewController.swift
//  Internet Transactions
//
//  Created by Alperen Çerkez on 17.11.2024.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let P = Person(Name: "Name 1", Surname: "Surname 1")
        
        let parameters = ["mail" : "value", "password" : "password"]
        
        AF.request("https://httpbin.org/post",
                   method: .post,
                   parameters: parameters,
                   encoder: JSONParameterEncoder.default).response { response in
            debugPrint(response)
        }
        
    }
}

struct Person: Encodable
{
    let Name: String
    let Surname: String
}
