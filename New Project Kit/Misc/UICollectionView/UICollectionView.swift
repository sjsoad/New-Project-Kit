//
//  UICollectionView.swift
//  Hanabi
//
//  Created by Sergey on 24.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit
import SKAnimator

extension UICollectionView {
    
    // MARK: - Utils -
    
    var flowLayout: UICollectionViewFlowLayout? {
        return collectionViewLayout as? UICollectionViewFlowLayout
    }
    
    var contentWidth: CGFloat {
        guard let layout = flowLayout else { return 0 }
        return bounds.width - layout.sectionInset.left - layout.sectionInset.right
    }
    
    // MARK: - Update -
    
    func update(widthContraint constraint: NSLayoutConstraint, completion: ((Bool) -> Void)? = nil) {
        updateIfNeedded(constraint, with: contentSize.width, completion)
    }
    
    func update(heightContraint constraint: NSLayoutConstraint, completion: ((Bool) -> Void)? = nil) {
        updateIfNeedded(constraint, with: contentSize.height, completion)
    }
    
    private func updateIfNeedded(_ constraint: NSLayoutConstraint, with value: CGFloat, _ completion: ((Bool) -> Void)? = nil) {
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            let constraintValue = constraint.constant
            if constraintValue != value {
                constraint.constant = value
                UIView.animate(withDuration: 0.25, animations: {
                    self.superview?.layoutIfNeeded()
                }, completion: completion)
            }
        }
    }
    
    // MARK: - Reload -
    
    func reload(with animatorProvider: AnimatorProvider) {
        
    }
    
}
