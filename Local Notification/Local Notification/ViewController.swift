//
//  ViewController.swift
//  Local Notification
//
//  Created by Alperen Çerkez on 21.11.2024.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCreateNotification_TUI(_ sender: Any) {
        
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Notification title"
        notificationContent.subtitle = "Notification subtitle"
        notificationContent.body = "Notification content"
        
        let criteria = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let notification = UNNotificationRequest(identifier: "EducationNotification", content: notificationContent, trigger: criteria)
        
        UNUserNotificationCenter.current().add(notification, withCompletionHandler: nil)
    }
    
}

