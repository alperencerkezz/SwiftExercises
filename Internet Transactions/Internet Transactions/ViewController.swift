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
        
        AF.request("https://httpbin.org/get").response { response in
            debugPrint(response)
        }
    }


}

