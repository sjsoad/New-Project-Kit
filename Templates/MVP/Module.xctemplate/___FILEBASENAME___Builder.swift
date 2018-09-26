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
        let presenter = ___VARIABLE_fileName:identifier___Presenter(with: viewController)
        viewController.set(presenter)
        return viewController
    }
    
}
