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
    func presentData(color: UIColor)
}

class ColorGeneratorPresenter: ColorGeneratorPresenterProtocol {
    var controller: ColorGeneratorViewControllerProtocol?
    
    func presentData(color: UIColor) {
        self.controller?.showData(color: color)
    }
}
