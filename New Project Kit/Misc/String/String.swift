//
//  String+Localizable.swift
//  ShadeCharts
//
//  Created by Evgeniy Leychenko on 17.03.17.
//  Copyright © 2017 theappsolutions.com. All rights reserved.
//

import Foundation

public extension String {
    
    public func localized() -> String {
        return GGLocalizationSystem.sharedLocal().localizedString(forKey: self, value: "")
    }
    
    func nsrange(of string: String) -> NSRange {
        let nsstring = self as NSString
        return nsstring.range(of: string)
    }
    
    func nsrange() -> NSRange {
        return NSRange(location: 0, length: self.count)
    }
    
}
