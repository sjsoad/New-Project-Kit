//
//  UIImageView.swift
//  Hanabi
//
//  Created by Sergey Kostyan on 10/2/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

extension UIImageView {
    
    func set(newTintColor: UIColor?) {
        image = image?.withRenderingMode(.alwaysTemplate)
        tintColor = newTintColor
    }
    
}
