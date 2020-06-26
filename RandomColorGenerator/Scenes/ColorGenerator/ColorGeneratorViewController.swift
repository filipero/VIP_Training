//
//  ViewController.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 24/06/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import UIKit

class ColorGeneratorViewController: UIViewController {

    @IBOutlet var backGround: UIView!
    @IBOutlet weak var hexValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var interactor: ColorGeneratorInteractorProtocol?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
}


extension ColorGeneratorViewController {
    
    func setup() {
        
        let controller = self
        let interactor = ColorGeneratorInteractor()
        let presenter = ColorGeneratorPresenter()
        
        controller.interactor = interactor
        interactor.presenter = presenter
        presenter.controller = self
        
    }
}


extension ColorGeneratorViewController {
    
    @IBAction func GerarNovaCorPressed(_ sender: UIButton) {
        interactor?.fetchData()
       }
}
