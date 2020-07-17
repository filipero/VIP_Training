//
//  RegisterViewController.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 17/07/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        
    }


