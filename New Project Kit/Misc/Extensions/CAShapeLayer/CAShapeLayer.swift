//
//  CAShapeLayer.swift
//  Hanabi
//
//  Created by Sergey on 21.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

extension CAShapeLayer {
    
    convenience init(with path: UIBezierPath) {
        self.init()
        self.path = path.cgPath
    }
    
}
