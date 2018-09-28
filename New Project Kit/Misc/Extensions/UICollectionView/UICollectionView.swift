//
//  UICollectionView.swift
//  Hanabi
//
//  Created by Sergey on 24.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

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
    
    func update(widthContraint constraint: NSLayoutConstraint) {
        updateIfNeedded(constraint, with: contentSize.width)
    }
    
    func update(heightContraint constraint: NSLayoutConstraint) {
        updateIfNeedded(constraint, with: contentSize.height)
    }
    
    private func updateIfNeedded(_ constraint: NSLayoutConstraint, with value: CGFloat) {
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            let constraintValue = constraint.constant
            guard constraintValue != value else { return }
            constraint.constant = value
            self.superview?.layoutIfNeeded()
        }
    }
    
}
