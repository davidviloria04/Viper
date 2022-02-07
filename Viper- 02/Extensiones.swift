//
//  Extensiones.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 6/02/22.
//

import Foundation
import UIKit

extension UIButton {
    
    //Borde redondeado
    func rounded() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
        
        
    }
    //Rebote
    
    func bounce(){
        UIView.animate(withDuration: 0.2) {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { _ in
            UIView.animate(withDuration: 0.2) {
                self.transform = .identity
            }
        }
    }
}
