//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import SKDataSources

protocol ___VARIABLE_fileName:identifier___CellInterface: class {
    
}

protocol ___VARIABLE_fileName:identifier___Output {
    
}

class ___FILEBASENAMEASIDENTIFIER___: DataSourceObjectPresenter {
    
    private weak var view: ___VARIABLE_fileName:identifier___CellInterface?
    
    private(set) var reuseIdentifier: String
    private(set) var model: <#ModelType#>
    
    init(with objectModel: <#ModelType#>, cellIdentifier: String) {
        self.model = objectModel
        self.reuseIdentifier = cellIdentifier
    }
    
    // MARK: - DataSourceObjectPresenter -
    
    func set(view: ___VARIABLE_fileName:identifier___CellInterface) {
        self.view = view
    }
    
    func configure() {
    }
    
}

// MARK: - ___VARIABLE_fileName:identifier___Output -

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_fileName:identifier___Output {
    
}
