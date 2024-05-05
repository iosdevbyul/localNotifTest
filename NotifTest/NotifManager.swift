//
//  NotifManager.swift
//  NotifTest
//
//  Created by COMATOKI on 2024-05-05.
//

import Foundation
import UserNotifications

class NotifManager {
    func requestPermission() -> Void {
            UNUserNotificationCenter
                .current()
                .requestAuthorization(options: [.alert, .badge, .alert, .provisional]) { granted, error in
                    if granted == true && error == nil {
                        print("we have permission!")
                    }
                }
        }
    
    func startNotif(min time:Int) {
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(time * 60), repeats: false)
        let content = UNMutableNotificationContent()
        content.title = "Wow!"
        content.body = "\(Date.now)"
        content.sound = UNNotificationSound.default
        // Create the request
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString,
                    content: content, trigger: trigger)


        // Schedule the request with the system.
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
            if let error = error {
                print("Error : ",error)
            } else {
                print("No error")
            }
        }
    }
}
