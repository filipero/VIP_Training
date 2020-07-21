//
//  RegisterInteractor.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 16/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

protocol RegisterInteractorProtocol {
    func RegistrationProcess(user: AuthModel)
}

class RegisterInteractor: RegisterInteractorProtocol {
    
    var presenter: RegisterPresenterProtocol?
    
    func RegistrationProcess(user: AuthModel) {
        AuthService().FAuth.createUser(withEmail: user.email, password: user.password) { authResult, error in
            if error != nil {
                self.presenter?.presentErrorAlert(message: error!.localizedDescription)
            } else {
                self.presenter?.presentHomeScreen()
            }
        }
    }
}
