//
//  UICollectionView+Reload.swift
//  Hanabi
//
//  Created by Sergey on 9/27/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation
import SKAnimator

extension UICollectionView {
    
    private static var animatorsKey = "animators"
    
    private var animators: [UIViewPropertyAnimator] {
        get {
            return objc_getAssociatedObject(self, &UICollectionView.animatorsKey) as? [UIViewPropertyAnimator] ?? []
        }
        set {
            objc_setAssociatedObject(self, &UICollectionView.animatorsKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    // MARK: - Reload -
    
    func cancelAnimations() {
        guard !animators.isEmpty else { return }
        animators.forEach { (animator) in
            animator.finishAnimationImmediately()
        }
        animators.removeAll()
    }
    
    func reload(with animationsProviders: [ViewAnimationProvider], random: Bool = false,
                animatorProvider: AnimatorProvider = DefaultAnimatorProvider(duration: 0.25), delayRange: ClosedRange<Double> = 0.1...0.25) {
        animators = []
        reloadData()
        layoutSubviews()
        let cells = random ? visibleCells : sortedCells()
        prepare(cells, for: animationsProviders)
        cells.forEach { (cell) in
            let animator = animatorProvider.animator()
            animator.addAnimations {
                for animationProvider in animationsProviders {
                    animationProvider.perform(for: cell)
                }
            }
            animator.startAnimation(afterDelay: Double.random(in: delayRange))
            animators.append(animator)
        }
    }
    
    private func sortedCells() -> [UICollectionViewCell] {
        return indexPathsForVisibleItems.sorted().compactMap({ cellForItem(at: $0) })
    }
    
    private func prepare(_ cells: [UICollectionViewCell], for animationsProviders: [ViewAnimationProvider]) {
        cells.forEach { (cell) in
            for animationProvider in animationsProviders {
                animationProvider.prepare(cell)
            }
        }
    }
    
}
