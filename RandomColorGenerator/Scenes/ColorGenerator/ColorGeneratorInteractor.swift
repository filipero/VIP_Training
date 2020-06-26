//
//  ColorGeneratorInteractor.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 24/06/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import UIKit
protocol ColorGeneratorInteractorProtocol {
    func fetchData()
}

class ColorGeneratorInteractor: ColorGeneratorInteractorProtocol {
    
    var presenter: ColorGeneratorPresenterProtocol?
    
    func fetchData() {
        
        let color: UIColor = UIColor.randomColor
        
        self.presenter?.presentData(color: color)
    }
}
