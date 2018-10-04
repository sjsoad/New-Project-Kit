//
//  UIView.swift
//  Hanabi
//
//  Created by Sergey on 20.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIView {
    
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
    
    // MARK: - Load -
    
    static func nib(with name: String? = nil) -> UINib {
        let nibName = name ?? "\(self)"
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func instantiateFromNib(with name: String? = nil) -> Self? {
        func instanceFromNib<T: UIView>() -> T? {
            return nib(with: name).instantiate() as? T
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
    
    // MARK: - Animations -
    
    static func animate(_ animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: 0.25, animations: animations, completion: completion)
    }
    
    static func animate(_ animations: @escaping () -> Void, with delay: TimeInterval) {
        UIView.animate(withDuration: 0.25, delay: delay, animations: animations)
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
