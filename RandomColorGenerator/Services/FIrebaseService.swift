//
//  FIrebaseService.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 17/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    let FAuth = Auth.auth()
    
    func RegisterUser(email:String, password: String) {
        FAuth.createUser(withEmail: email, password: password) { authResult, error in
            
            
        }
    }
    
    func Login(email:String, password: String) {
        FAuth.signIn(withEmail: email, password: password) { authResult, error in
            
        }
    }
    
    func Logout(){
        do {
            try FAuth.signOut()
        } catch let logoutError as NSError {
            print("Error logging out: %@", logoutError)
        }
    }
    
}
