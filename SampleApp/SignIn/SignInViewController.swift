//
//  SignInViewController.swift
//  SampleApp
//
//  Created Ramineni Sunanda on 09/06/20.
//  Copyright © 2020 Ramineni Sunanda. All rights reserved.
//
//

import UIKit

class SignInViewController: UIViewController, SignInDisplaying {

	var presenter: SignInPresenting?

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    func setupUI() {
        
    }

}
