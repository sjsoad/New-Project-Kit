//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import SKDataSources

protocol ___VARIABLE_fileName:identifier___Interface: class {
    
}

protocol ___VARIABLE_fileName:identifier___Output {
    
}

class ___FILEBASENAMEASIDENTIFIER___ {
    
    private weak var view: ___VARIABLE_fileName:identifier___Interface?
    private(set) var reuseIdentifier: String
    private(set) var model: <#ModelType#>
    
    init(with objectModel: <#ModelType#>, cellIdentifier: String) {
        self.model = objectModel
        self.reuseIdentifier = cellIdentifier
    }
}

// MARK: - ___VARIABLE_fileName:identifier___Output -

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_fileName:identifier___Output {
    
}

// MARK: - PresenterType -

extension ___FILEBASENAMEASIDENTIFIER___: PresenterType {
    
    
    func set(view: ViewType) {
        self.view = view as? ___VARIABLE_fileName:identifier___Interface
    }
    
    func configure() {
    }
}
