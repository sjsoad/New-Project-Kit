//
//  UIDevice.swift
//  Hanabi
//
//  Created by Sergey on 25.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import UIKit

extension UIDevice {
    
    var iPad: Bool {
        return userInterfaceIdiom == .pad
    }
    
    // indicate current device is in the LandScape orientation
    var isLandscape: Bool {
        return orientation.isValidInterfaceOrientation ? orientation.isLandscape : UIApplication.shared.statusBarOrientation.isLandscape
    }
    
    // indicate current device is in the Portrait orientation
    var isPortrait: Bool {
        return orientation.isValidInterfaceOrientation ? orientation.isPortrait : UIApplication.shared.statusBarOrientation.isPortrait
    }
    
}
