//
//  ValidationRulesProvider.swift
//  SKUtils
//
//  Created by Sergey on 21.05.2018.
//  Copyright © 2018 Sergey Kostyan. All rights reserved.
//

import UIKit
import SKValidationService // pod 'SKValidationService'

class ValidationRulesProvider: NSObject {

    var emailValidator: RegularExpressionRule {
        // Typical email validation
        return RegularExpressionRule(predicateFormat: "SELF MATCHES %@", regularExpression: "[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}")
    }

    var passwordValidator: RegularExpressionRule {
        // One uppercase, one lowercase, one digit
        return RegularExpressionRule(predicateFormat: "SELF MATCHES %@", regularExpression: "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).+$")
    }
    
}
