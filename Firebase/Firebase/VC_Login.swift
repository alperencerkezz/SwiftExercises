//
//  VC_Login.swift
//  Firebase
//
//  Created by Alperen Çerkez on 18.11.2024.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class VC_Login: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfSurname: UITextField!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnSave_TUI(_ sender: Any) {
        Auth.auth().createUser(withEmail: tfEmail.text!, password: tfPassword.text!) { authResult, error in
            
            if error != nil
            {
                print(error?.localizedDescription)
            }
            else
            {
                self.SaveService()
            }
          // ...
        }
    }
    
    func SaveService()
    {
        let u = User()
        u.Name = tfName.text
        u.Surname = tfSurname.text
        u.Title = tfTitle.text
        
        var ref = Database.database().reference()
        ref.child = ("Users").child(Auth.auth().currentUser!.uid).setValue(u)
        
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
