//
//  ViewController.swift
//  Internet Transactions
//
//  Created by Alperen Çerkez on 17.11.2024.
//

import UIKit
import Alamofire

struct ResponseHeaders: Decodable {
    let headers: [String: String]
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let headers: HTTPHeaders = [
            "Token": "Token value",
            "Content-Type": "application/json"
        ]

        print("Request Headers: \(headers)")

        AF.request("https://httpbin.org/headers", headers: headers).responseDecodable(of: ResponseHeaders.self) { response in
            switch response.result {
            case .success(let data):
                print("Response Headers: \(data.headers)")
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
