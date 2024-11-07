//
//  ViewController.swift
//  CameraLab1
//
//  Created by Alperen Çerkez on 7.11.2024.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ivBackground: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnOpenCamera_TUI(_ sender: Any) {
        CameraControl()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        ivBackground.image = image
        dismiss(animated: true, completion: nil)
    }
    
    func CameraControl() {
        let situation = AVCaptureDevice.authorizationStatus(for: .video)
        
        switch situation {
        case .notDetermined:
            OpenCamera()
        case .restricted:
            ShowAlert()
        case .denied:
            ShowAlert()
        case .authorized:
            OpenCamera()
        }
    }
    
    func ShowAlert() {
        let title = "Can't access to camera"
        let message = "You should give access from settings"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Settings", style: .default, handler: OpenSettings))
        present(alert, animated: true, completion: nil)
    }
    
    func OpenSettings(alert: UIAlertAction) {
     
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {return}
        
        if UIApplication.shared.canOpenURL(settingsUrl) {
            
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(settingsUrl, completionHandler: nil)
            } else {
                UIApplication.shared.openURL(settingsUrl)
            }
        }
    }
    
    func OpenCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
}

