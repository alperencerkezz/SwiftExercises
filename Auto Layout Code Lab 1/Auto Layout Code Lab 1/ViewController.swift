//
//  ViewController.swift
//  Auto Layout Code Lab 1
//
//  Created by Alperen Çerkez on 6.11.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tfUsername = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        tfUsername.placeholder = "Username"
        tfUsername.backgroundColor = .white
        tfUsername.borderStyle = .roundedRect
        tfUsername.textColor = .black
        tfUsername.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(tfUsername)
        
        let tfPassword = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        tfPassword.placeholder = "Password"
        tfPassword.backgroundColor = .white
        tfPassword.borderStyle = .roundedRect
        tfPassword.textColor = .black
        tfPassword.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(tfPassword)
        
        let btnLogin = UIButton()
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.backgroundColor = .blue
        btnLogin.titleLabel?.textColor = .black
        btnLogin.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(btnLogin)
        
        tfUsername.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            tfUsername.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tfUsername.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            tfUsername.heightAnchor.constraint(equalToConstant: 50),
            tfUsername.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
        
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            tfPassword.topAnchor.constraint(equalTo: tfUsername.bottomAnchor, constant: 10),
            tfPassword.leadingAnchor.constraint(equalTo: tfUsername.leadingAnchor, constant: 0),
            tfPassword.trailingAnchor.constraint(equalTo: tfUsername.trailingAnchor, constant: 0),
            tfPassword.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            btnLogin.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 10),
            btnLogin.leadingAnchor.constraint(equalTo: tfPassword.leadingAnchor, constant: 0),
            btnLogin.trailingAnchor.constraint(equalTo: tfPassword.trailingAnchor, constant: 0),
            btnLogin.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
        
        
    }


}

