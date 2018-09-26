//
//  UIViewController.swift
//  Hanabi
//
//  Created by Sergey on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addChild(_ viewController: UIViewController, to container: UIView) {
        guard let childView = viewController.view else { return }
        addChild(viewController)
        childView.add(to: container)
        viewController.didMove(toParent: self)
    }

    func addChild(_ viewController: UIViewController, to container: UIStackView) {
        guard let childView = viewController.view else { return }
        addChild(viewController)
        container.addArrangedSubview(childView)
        viewController.didMove(toParent: self)
    }
    
}
