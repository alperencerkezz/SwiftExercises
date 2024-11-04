//
//  ViewController.swift
//  Data Transfer with Segue
//
//  Created by Alperen Çerkez on 5.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSwitch_TUI(_ sender: Any) {
       // performSegue(withIdentifier: "sgSwitch", sender: "Sent value")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier: "VC2") as! VC2
        
        vc2.incoming = "Sent Value"
        
        present(vc2, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sgSwitch" {
            let vc2 = segue.destination as! VC2
            vc2.incoming = sender as! String
            
            
        }
    }
}

