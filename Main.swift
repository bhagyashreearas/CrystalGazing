//
//  Sign In page.swift
//  Project-Template
//
//  Created by Bhagyashree Aras on 11/5/20.
//


import Foundation
import SwiftUI

class   Mainpage: UIViewController  {
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
    }

    @objc func GoBack() {
        navigationController?.popViewController(animated: true)
    }

    lazy var Sign_In: UIButton = {
        let iv = UIButton()
        iv.titleLabel?.adjustsFontSizeToFitWidth = true
        iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 25)
        iv.setTitle("Sign In", for: .normal)
        iv.setTitleColor(UIColor.FacebookBlue(), for: .normal)
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        iv.addTarget(self, action: #selector(SignInNavigation), for: UIControl.Event.touchUpInside)
        return iv

    }()

    lazy var Sign_Up: UIButton = {
        let iv = UIButton()
        iv.titleLabel?.adjustsFontSizeToFitWidth = true
        iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 25)
        iv.setTitle("Sign Up", for: .normal)
        iv.setTitleColor(UIColor.FacebookBlue(), for: .normal)
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        iv.addTarget(self, action: #selector(SignUpNavigation), for: UIControl.Event.touchUpInside)
        return iv
    }()

    @objc func SignInNavigation() {
        navigationController?.pushViewController(SignInPage(), animated: true)
    }
    
    @objc func SignUpNavigation() {
        navigationController?.pushViewController(SignUpPage(), animated: true)
    }
   func configureViewComponents() {
    view.addSubview(Sign_Up)
    Sign_Up.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 25, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Sign_In)
    Sign_In.anchor(top: nil, left: view.leftAnchor, bottom: Sign_Up.topAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 25, paddingRight: 25, width: 0 , height: 50)
    
    }
    
}

