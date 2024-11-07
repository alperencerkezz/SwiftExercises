//
//  ViewController.swift
//  Photo Gallery
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ivPhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOpenPhotoGallery_TUI(_ sender: Any) {
        openPhotoGallery()
    }
    
    func openPhotoGallery() {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        ivPhoto.image = image
        
        dismiss(animated: true, completion: nil)
    }
    
}

