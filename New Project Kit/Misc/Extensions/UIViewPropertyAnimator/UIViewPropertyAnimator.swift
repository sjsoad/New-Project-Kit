//
//  UIViewPropertyAnimator.swift
//  Hanabi
//
//  Created by Sergey on 9/27/18.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

extension UIViewPropertyAnimator {
    
    var durationFactor: CGFloat {
        let animationDuration = CGFloat(duration)
        return animationDuration - animationDuration * fractionComplete
    }
    
    func continueAnimation() {
        continueAnimation(withTimingParameters: timingParameters, durationFactor: durationFactor)
    }
    
    func finishAnimationImmediately() {
        stopAnimation(false)
        finishAnimation(at: .end)
    }
    
}
