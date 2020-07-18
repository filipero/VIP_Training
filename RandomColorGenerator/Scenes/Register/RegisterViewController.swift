//
//  RegisterViewController.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 17/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let label: UILabel = {
        
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Sign up"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        
        return label
    }()
    
    private let emailField: UITextField = {
        
        let emailField = UITextField()
        emailField.placeholder = "Email address"
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.black.cgColor
        
        return emailField
    }()
    
    private let passwordField: UITextField = {
        
        let passwordField = UITextField()
        passwordField.isSecureTextEntry = true
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.black.cgColor
        
        return passwordField
    }()
    
    private let registerButton: UIButton = {
        
        let registerButton = UIButton()
        registerButton.backgroundColor = .systemGreen
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.setTitle("Continue", for: .normal)
        
        return registerButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(registerButton)
        registerButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
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
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        label.frame = CGRect(x: 0, y: 100,
                             width: view.frame.size.width, height: 80)
        
        emailField.frame = CGRect(x: 20, y: label.frame.origin.y + label.frame.size.height + 10, width: view.frame.size.width-40, height: 50)
        
        passwordField.frame = CGRect(x: 20, y: emailField.frame.origin.y + emailField.frame.size.height + 10,
                                     width: view.frame.size.width-40, height: 50)
        
        registerButton.frame = CGRect(x: 20, y: passwordField.frame.origin.y + passwordField.frame.size.height + 10,
                                      width: view.frame.size.width-40, height: 80)
    }
        
    @objc private func didTapButton(){
        print("Button was tapped")
        guard let email = emailField.text, !email.isEmpty, let password = passwordField.text, !password.isEmpty else {
            print("An error has occurred")
            return
            interactor?.fetch()
        }
    }
        
    }


