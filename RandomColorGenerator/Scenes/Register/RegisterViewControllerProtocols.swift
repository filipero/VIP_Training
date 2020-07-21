//
//  RegisterViewControllerProtocols.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 16/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import UIKit

protocol RegisterViewControllerProtocol{
    func showHomeScreen()
    func showErrorAlert(message: String)
}

extension RegisterViewController: RegisterViewControllerProtocol{
    func showErrorAlert(message: String) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: "Erro!", message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController,animated: true, completion: nil)
        }
    }
    
    func showHomeScreen() {
        
    }
    
}
