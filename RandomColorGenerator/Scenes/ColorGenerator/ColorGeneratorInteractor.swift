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
    func fetchColor()
    func fetchHexValue(value: String)
}

class ColorGeneratorInteractor: ColorGeneratorInteractorProtocol {
    func fetchHexValue(value: String) {
        UIPasteboard.general.string = value
        self.presenter?.presentHexValue()
    }
    
    
    var presenter: ColorGeneratorPresenterProtocol?
    
    func fetchColor() {
        
        let color: UIColor = UIColor.randomColor
        
        self.presenter?.presentColor(color: color)
    }
}
