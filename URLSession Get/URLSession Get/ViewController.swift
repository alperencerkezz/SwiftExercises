//
//  ViewController.swift
//  URLSession Get
//
//  Created by Alperen Çerkez on 16.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var request = URLRequest(url: URL(string: "")!)
        
        
        var header = [String: String]()
        header["Content-Type"] = "application/json"
        
        header["Authorization"] = "Token value"
        
        request.allHTTPHeaderFields = header
        
        request.addValue("value", forHTTPHeaderField: "Key")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if error != nil
            {
                // error
            }
            else
            {
                let result = response as! HTTPURLResponse
                
                if result.statusCode == 200
                {
                    // conversion
                    DispatchQueue.main.async {
                        // ui update
                    }
                }
                else
                {
                    // service error
                }
            }
            
        }.resume()
    }


}

