//
//  SignInPresenter.swift
//  SampleApp
//
//  Created Ramineni Sunanda on 09/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//
//

import UIKit

class SignInPresenter: SignInPresenting {

    weak var view: SignInDisplaying?
    var interactor: SignInInteracting?
    var router: SignInRouting?

    private var signIn: SignIn?
    
    func viewDidLoad() {
        view?.setupUI()
    }
    
    func setCred(signIn: SignIn) {
        self.signIn = signIn
    }
    
    func isValid() -> Bool {
        guard let _ = signIn else {
            return false
        }
        return true
    }
    
    func shouldLogin() -> Bool {
        guard let signIn = signIn else {
            return false
        }
        return !signIn.name.isEmpty && !signIn.password.isEmpty
    }
   
}
