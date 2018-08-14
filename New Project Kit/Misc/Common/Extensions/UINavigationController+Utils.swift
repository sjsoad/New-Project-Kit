//
//  UINavigationController+Utils.swift
//  Nioxin
//
//  Created by Sergey on 23.06.17.
//  Copyright © 2017 grossum solutions. All rights reserved.
//

import UIKit

extension UINavigationController {

    @discardableResult
    func pop<ControllerClass: UIViewController>(to class: ControllerClass.Type) -> Bool {
        guard let controller = viewControllers.reversed().first(where: { $0 is ControllerClass }) else { return false }
        popToViewController(controller, animated: true)
        return true
    }
    
    func stackContains<ControllerClass: UIViewController>(viewControllerOfType class: ControllerClass.Type) -> Bool {
        return viewControllers.contains(where: { $0 is ControllerClass })
    }
    
}
