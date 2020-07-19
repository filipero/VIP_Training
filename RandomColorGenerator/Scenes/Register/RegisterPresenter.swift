//
//  RegisterPresenter.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 16/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation

protocol RegisterPresenterProtocol {
    func present()
}

class RegisterPresenter: RegisterPresenterProtocol {
    var controller: RegisterViewControllerProtocol?
    
    func present() {
        
        controller?.show()
    }
}
