//
//  MockSignInDisplay.swift
//  SampleAppTests
//
//  Created by Ramineni Sunanda on 10/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//

import Foundation
@testable import SampleApp

class MockSignInDisplay: SignInDisplaying {
    
    var presenter: SignInPresenting?
    var setupUICallCount = 0
    
    func setupUI() {
        setupUICallCount += 1
    }
    
    
}
