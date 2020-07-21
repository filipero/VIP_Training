//
//  ColorGeneratorPresenter.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 24/06/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import UIKit

protocol ColorGeneratorPresenterProtocol {
    func presentColor(color: UIColor)
    func presentHexValue()
}

class ColorGeneratorPresenter: ColorGeneratorPresenterProtocol {
    
    var controller: ColorGeneratorViewControllerProtocol?
    
    func presentHexValue(){
        self.controller?.showHexValue()
    }
    
    func presentColor(color: UIColor) {
        self.controller?.showColor(color: color)
    }
}
