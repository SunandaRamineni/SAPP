//
//  SignInContract.swift
//  SampleApp
//
//  Created Ramineni Sunanda on 09/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//
//

import Foundation
import UIKit

// MARK: Router -
protocol SignInRouting: class {
    var view: SignInViewController? {get set}
    static func make() -> UIViewController
}

// MARK: Presenter -
protocol SignInPresenting: class {
    var view: SignInDisplaying? {get set}
    func viewDidLoad()
    func isValid() -> Bool
    func setCred(signIn: SignIn)
}

// MARK: Interactor -
protocol SignInInteracting: class {

  var presenter: SignInPresenting? {get set}
}

// MARK: View -
protocol SignInDisplaying: class {

  var presenter: SignInPresenting? {get set}
    func setupUI()
}
