//
//  RegisterViewController.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 17/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var pageTitle: UILabel!
    @IBOutlet weak var pageLogo: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        
        emailField.layer.cornerRadius = 18
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        emailField.textColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        emailField.borderStyle = .none
        emailField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10 ,height:10))
        // Using the leftPadding constant breaks the screen!
        emailField.leftViewMode = .always
        
        passwordField.layer.cornerRadius = 18
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        passwordField.textColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        passwordField.isSecureTextEntry = true
        passwordField.borderStyle = .none
        passwordField.leftView = leftPadding
        passwordField.leftViewMode = .always
        
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = #colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)
        registerButton.layer.cornerRadius = 18
        registerButton.imageEdgeInsets.right = 0 - registerButton.frame.width - 50
        registerButton.titleEdgeInsets.right = 0

    }
    
    var interactor: RegisterInteractorProtocol?
        
        override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
            super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
            setup()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setup()
        }
        
        func setup() {
            
            let controller = self
            let interactor = RegisterInteractor()
            let presenter = RegisterPresenter()
            
            controller.interactor = interactor
            interactor.presenter = presenter
            presenter.controller = self
            
        }
    
    @IBAction func didTapRegisterButton(_ sender: UIButton) {
        interactor?.RegistrationProcess(user: AuthModel(email: emailField.text!, password: passwordField.text!))
    }
    
    @IBAction func didTapGoToLoginPage(_ sender: UIButton) {
        print("Go to login page")
    }
    
}


