//
//  RegisterInteractor.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 16/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation

protocol RegisterInteractorProtocol {
    func fetch()
}

class RegisterInteractor: RegisterInteractorProtocol {
    
    var presenter: RegisterPresenterProtocol?
    
    func fetch() {
        
    }
}
