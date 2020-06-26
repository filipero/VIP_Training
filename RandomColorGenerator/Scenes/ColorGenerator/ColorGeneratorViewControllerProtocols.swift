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
    func showColor(color: UIColor)
    func showHexValue()
}

extension ColorGeneratorViewController: ColorGeneratorViewControllerProtocol {
    
    func showHexValue() {
        //update UI
        self.showToast(message: "Valor copiado", font: .systemFont(ofSize: 12.0))
        }
    
    
    func showColor(color: UIColor) {
        
        DispatchQueue.main.async {
            //update UI
            self.backGround.layer.backgroundColor = color.cgColor
            self.hexValue.setTitle(color.toHex()!, for: .normal)
        }

    }
}

