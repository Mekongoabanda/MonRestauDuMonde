//
//  Degrade.swift
//  MonRestauDuMonde
//
//  Created by user159565 on 5/7/20.
//  Copyright © 2020 user159565. All rights reserved.
//

import UIKit

class Degrade: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
    }
    
    override init() {
        super.init()
        miseEnPlace()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func miseEnPlace(){
        frame = UIScreen.main.bounds
        colors = [NOIR.cgColor, GRIS_TRES_FONCE.cgColor]
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
        locations = [0, 1]
    }
    
}
