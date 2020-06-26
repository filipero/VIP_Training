//
//  ColorGeneratorProtocols.swift
//  RandomColorGenerator
//
//  Created by Foliveira on 24/06/20.
//  Copyright © 2020 Foliveira. All rights reserved.
//

import Foundation
import UIKit

protocol ColorGeneratorViewControllerProtocol {
    func showData(color: UIColor)
}

extension ColorGeneratorViewController: ColorGeneratorViewControllerProtocol {
    func showData(color: UIColor) {
        
        DispatchQueue.main.async {
            //update UI
            self.backGround.layer.backgroundColor = color.cgColor
            self.hexValue.text = "cor gerada: \(color.toHex()!)"
        }

    }
}

