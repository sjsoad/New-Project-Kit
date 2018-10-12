//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Foundation
import SKDataSources

class ___FILEBASENAMEASIDENTIFIER___: <#cell type#>, ___VARIABLE_fileName:identifier___Interface {
    
    private var presenter: ___VARIABLE_fileName:identifier___Output?
    
    // MARK: - ___VARIABLE_fileName:identifier___Interface -
    
}

// MARK: - ViewType -

extension ___FILEBASENAMEASIDENTIFIER___: ViewType, Reusable, Nibable {
    
    func set(presenter: PresenterType) {
        self.presenter = presenter as? ___VARIABLE_fileName:identifier___Output
    }
    
}
