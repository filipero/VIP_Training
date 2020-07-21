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
    @IBOutlet weak var hexValue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //hexValue.setTitle("8E8E93", for: .normal)
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
    
    func setup() {
        
        let controller = self
        let interactor = ColorGeneratorInteractor()
        let presenter = ColorGeneratorPresenter()
        
        controller.interactor = interactor
        interactor.presenter = presenter
        presenter.controller = self
        
    }
    
}

// MARK: - Screen actions

extension ColorGeneratorViewController {
    
    @IBAction func hexValuePressed(_ sender: UIButton) {
        if let hexValue = sender.titleLabel?.text {
            interactor?.fetchHexValue(value: hexValue)
        }
    }
    
    @IBAction func GerarNovaCorPressed(_ sender: UIButton) {
        interactor?.fetchColor()
    }
}
