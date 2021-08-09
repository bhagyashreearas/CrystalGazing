//
//  SignUp.swift
//  CrystalGazing
//
//  Created by bhagyashree aras on 11/5/20.
//

import Foundation
import SwiftUI

class SignUpPage:
    UIViewController {
        override func
        viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = UIColor.BabyBlue()
            configureViewComponents()
        
        }

    let FirstName: UILabel = {
        let user = UILabel()
        user.text = "FirstName"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let FirstNameTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter FirstName...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    
    let LastName: UILabel = {
        let user = UILabel()
        user.text = "FirstName"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let LastNameTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter FirstName...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    let RegistrationDate: UILabel = {
        let user = UILabel()
        user.text = "RegistrationDate"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let RegistrationDateTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter RegistrationDate...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    
    let Email: UILabel = {
        let user = UILabel()
        user.text = "Email"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let EmailTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter Email...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        user.textAlignment = .center
        user.font =  UIFont(name: Fonts.Baloo, size: 15)
        user.textColor = UIColor.FacebookBlue()
        user.keyboardType = UIKeyboardType.default
        user.keyboardAppearance = UIKeyboardAppearance.default
        return user
    }()
    
    let BirthDate: UILabel = {
        let user = UILabel()
        user.text = "BirthDate"
        user.font = UIFont(name: Fonts.Baloo, size: 35)
        user.textColor = .white
        user.textAlignment = .center
        user.adjustsFontSizeToFitWidth = true
        return user
    }()
    
    let BirthDateTextField: UITextField = {
        let user = UITextField()
        user.layer.borderWidth = 1
        user.layer.borderColor = UIColor.white.cgColor
        user.backgroundColor = .white
        user.layer.cornerRadius = 15
        user.attributedPlaceholder = NSAttributedString(string: "Enter BirthDate...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
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
            iv.addTarget(self, action: #selector(LiabilityNavigation), for: UIControl.Event.touchUpInside)
            return iv
        }()
    
    @objc func LiabilityNavigation() {
        navigationController?.pushViewController(LiabilityPage(), animated: true)
    }
    /*@objc func PrintTest() {
        print("The username", FirstNameTextField.text!, "The password", LastNameTextField.text!)
    }*/

func configureViewComponents() {
   // view.addSubview()
    view.addSubview(FirstName)
    FirstName.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(FirstNameTextField)
    FirstNameTextField.anchor(top: FirstName.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
   view.addSubview(LastName)
    LastName.anchor(top: FirstNameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(LastNameTextField)
    LastNameTextField.anchor(top: LastName.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(RegistrationDate)
    RegistrationDate.anchor(top: LastNameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(RegistrationDateTextField)
    RegistrationDateTextField.anchor(top: RegistrationDate.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(BirthDate)
    BirthDate.anchor(top: RegistrationDateTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(BirthDateTextField)
    BirthDateTextField.anchor(top: BirthDate.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Email)
    Email.anchor(top: BirthDateTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(EmailTextField)
    EmailTextField.anchor(top: Email.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Continue)
    Continue.anchor(top: EmailTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 50, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    }

}


