//
//  ViewLifecycle.swift
//  Hanabi
//
//  Created by Sergey on 19.09.2018.
//  Copyright © 2018 Sergey. All rights reserved.
//

import Foundation

protocol ViewLifecycle {

    func viewWillAppear()
    func viewDidAppear()
    func viewDidLoad()
    
}

extension ViewLifecycle {

    func viewWillAppear() {
        print("called, but not implemented")
    }
    
    func viewDidAppear() {
        print("called, but not implemented")
    }
    
    func viewDidLoad() {
        print("called, but not implemented")
    }
    
}
