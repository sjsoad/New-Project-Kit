//
//  UIView.swift
//  Hanabi
//
//  Created by Sergey on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Load -
    
    static var nib: UINib {
        return UINib(nibName: "\(self)", bundle: nil)
    }
    
    static func instantiateFromNib() -> Self? {
        func instanceFromNib<T: UIView>() -> T? {
            return nib.instantiate() as? T
        }
        return instanceFromNib()
    }
    
    // MARK: - Child -
    
    func add(to container: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(self)
        addConstraint(for: self, to: container, attribute: .top)
        addConstraint(for: self, to: container, attribute: .leading)
        addConstraint(for: self, to: container, attribute: .trailing)
        addConstraint(for: self, to: container, attribute: .bottom)
    }
    
    func addConstraint(for childView: UIView, to container: UIView, attribute: NSLayoutConstraint.Attribute) {
        let constraint = NSLayoutConstraint(item: childView, attribute: attribute, relatedBy: .equal, toItem: container, attribute: attribute,
                                            multiplier: 1, constant: 0)
        container.addConstraint(constraint)
    }
    
    // MARK: - Mask -
    
    func round(corners: CACornerMask, radius: CGFloat) {
        layer.cornerRadius = radius
        layer.maskedCorners = corners
    }
    
    // MARK: - Round -
    
    func rounded() {
        layer.cornerRadius = bounds.midX
        layer.masksToBounds = true
    }
    
    // MARK: - IBInspectable -
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            return layer.borderColor?.uiColor
        }
    }
    
}

fileprivate extension CGColor {
    var uiColor: UIKit.UIColor {
        return UIKit.UIColor(cgColor: self)
    }
}

fileprivate extension UINib {
    
    func instantiate() -> Any? {
        return instantiate(withOwner: nil, options: nil).first
    }
    
}
