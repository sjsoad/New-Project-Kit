//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit
import SKActivityViewable
import SKAlertViewable
import SKNetworking

protocol ___VARIABLE_fileName:identifier___Interface: class, ActivityViewable, AlertViewable {
    
}

protocol ___VARIABLE_fileName:identifier___Output {
    
}

class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    
    private weak var view: ___VARIABLE_fileName:identifier___Interface?
    
    private var servicesRepository: ServicesRepository
    
    init(with view: ___VARIABLE_fileName:identifier___Interface, servicesRepository: ServicesRepository) {
        self.view = view
        self.servicesRepository = servicesRepository
    }
    
}

// MARK: - ___VARIABLE_fileName:identifier___Output -

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_fileName:identifier___Output {
    
}

// MARK: - RequestExecuting -

extension ___FILEBASENAMEASIDENTIFIER___: RequestExecuting {
    
    var activityView: ActivityViewable? {
        return view
    }
    
}

// MARK: - RequestErrorHandling -

extension ___FILEBASENAMEASIDENTIFIER___: RequestErrorHandling {
    
    var alertView: AlertViewable? {
        return view
    }
    
}
