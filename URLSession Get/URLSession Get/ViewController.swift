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
        
        
        let request = URLRequest(url: URL(string: "")!)
        
        
 
        
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

