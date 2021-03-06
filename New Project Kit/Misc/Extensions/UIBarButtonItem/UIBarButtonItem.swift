//
//  UIBarButtonItem.swift
//  Hanabi
//
//  Created by Sergey on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

extension UITabBarItem {
    
    convenience init(title: String, image: UIImage?, font: UIFont) {
        self.init(title: title, image: image, tag: 0)
        setTitleTextAttributes([.font: font], for: .normal)
    }
    
}
