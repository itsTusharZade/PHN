//
//  UIViewController+Ext.swift
//  PHN_Task
//
//  Created by Tushar Zade on 13/10/23.
//

import Foundation
import UIKit

extension UIViewController{
    func showAlert(title: String, message: String, actionTitle: String = "OK") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    func getWindow() -> UIWindow?{
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first {
            return window
        }
        return UIApplication.shared.windows.first
    }
    
    func showAlertWithTwoActions(title: String, message: String, onYes:@escaping() -> Void){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { action in
            onYes()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { action in
            
        }))
        self.present(alert, animated: true)
    }
}
