//
//  SignInRouter.swift
//  SampleApp
//
//  Created Ramineni Sunanda on 09/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//
//

import UIKit

class SignInRouter: SignInRouting {
    
    weak var view: SignInViewController?
    
    static func make() -> UIViewController {
        
        let storyboard = UIStoryboard.init(name: "SignIn", bundle: nil)
        guard let view = storyboard.instantiateInitialViewController() as? SignInViewController else {
            return UIViewController()
        }

        let interactor = SignInInteractor()
        let router = SignInRouter()
        let presenter = SignInPresenter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        router.view = view

        return view
    }
}
