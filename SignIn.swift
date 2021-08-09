//
//  SignIn.swift
//  CrystalGazing
//
//  Created by bhagyashree aras on 11/5/20.
//

import Foundation
import SwiftUI

class SignInPage:
    UIViewController {
        override func
        viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = UIColor.BabyBlue()
            configureViewComponents()
        
        }

    let Username: UILabel = {
        let user = UILabel()
        user.text = "Username"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let UserNameTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter Username...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    
    let Password: UILabel = {
        let user = UILabel()
        user.text = "Username"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let PasswordTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter Password...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    lazy var Continue: UIButton = {
            let iv = UIButton()
            iv.titleLabel?.adjustsFontSizeToFitWidth = true
            iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 25)
            iv.setTitle("Continue", for: .normal)
            iv.setTitleColor(UIColor.FacebookBlue(), for: .normal)
            iv.backgroundColor = .white
            iv.layer.cornerRadius = 25
            iv.addTarget(self, action: #selector(HoroscopeNavigation), for: UIControl.Event.touchUpInside)
            return iv
        }()

    @objc func HoroscopeNavigation() {
        navigationController?.pushViewController(HoroscopePage(), animated: true)
    }

func configureViewComponents() {
   // view.addSubview()
    view.addSubview(Username)
    Username.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(UserNameTextField)
    UserNameTextField.anchor(top: Username.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 15, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Password)
    Password.anchor(top: UserNameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(PasswordTextField)
    PasswordTextField.anchor(top: Password.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 15, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Continue)
    Continue.anchor(top: PasswordTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 50, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    }

}


