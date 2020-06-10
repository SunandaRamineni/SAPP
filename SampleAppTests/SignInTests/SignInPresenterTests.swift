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
    var mockSignInDisplay = MockSignInDisplay()
    
    override func setUp() {
        sut = SignInPresenter()
    }
    
    func test_view_set_up_ui_on_presenter_view_did_load() {
        //Arrange
        sut.view = mockSignInDisplay
        
        //Act
        sut.viewDidLoad()
        
        //Assert
        XCTAssertEqual(mockSignInDisplay.setupUICallCount, 1)
    }

    func test_is_valid_false() {
        //Arrange
        sut.setCred(signIn: nil)
        
        //Act
        
        //Assert
        XCTAssertFalse(sut.isValid())
    }
    
    func test_is_valid_true() {
        //Arrange
        sut.setCred(signIn: SignIn(name: "name", password: "password"))
        
        //Act
        
        //Assert
        XCTAssertTrue(sut.isValid())
    }

}
