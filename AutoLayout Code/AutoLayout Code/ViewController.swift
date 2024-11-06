//
//  ViewController.swift
//  AutoLayout Code
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vHeader: UIView!
    @IBOutlet weak var vCenter: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vHeader.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            vHeader.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 0),
            vHeader.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
            vHeader.trailingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.trailingAnchor, multiplier: 0),
            vHeader.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        vCenter.translatesAutoresizingMaskIntoConstraints = false
        
        vCenter.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        vCenter.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        vCenter.heightAnchor.constraint(equalToConstant: 120).isActive = true
        vCenter.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }


}

