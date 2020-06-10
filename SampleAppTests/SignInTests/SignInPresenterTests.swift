//
//  SignInPresenterTests.swift
//  SampleAppTests
//
//  Created by Ramineni Sunanda on 09/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//

import XCTest
@testable import SampleApp

class SignInPresenterTests: XCTestCase {
    
    var sut: SignInPresenting!
    
    override func setUp() {
        sut = SignInPresenter()
    }

    func test_is_valid() {
        //Arrange
        sut.setCred(signIn: SignIn(name: "name", password: "password"))
        
        //Act
        
        //Assert
        XCTAssertTrue(sut.isValid())
    }

}
