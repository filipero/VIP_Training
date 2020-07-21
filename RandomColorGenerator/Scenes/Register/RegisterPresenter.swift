//
//  RegisterPresenter.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 16/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation

protocol RegisterPresenterProtocol {
    func presentHomeScreen()
    func presentErrorAlert(message: String)
}

class RegisterPresenter: RegisterPresenterProtocol {
    var controller: RegisterViewControllerProtocol?
    
    func presentHomeScreen() {
        
        controller?.showHomeScreen()
    }
    func presentErrorAlert(message: String) {
        
        controller?.showErrorAlert(message: message)
    }
}
