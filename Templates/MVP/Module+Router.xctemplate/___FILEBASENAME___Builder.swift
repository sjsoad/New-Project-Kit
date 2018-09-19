//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

struct ___FILEBASENAMEASIDENTIFIER___ {
    
    static func build() -> UIViewController {
        let viewController = ___VARIABLE_fileName:identifier___ViewController()
        let router = ___VARIABLE_fileName:identifier___Router(with: viewController)
        let presenter = ___VARIABLE_fileName:identifier___Presenter(with: viewController, router)
        viewController.presenter = presenter
        return viewController
    }
    
}
