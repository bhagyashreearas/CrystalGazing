//
//  Login Page.swift
//
//  Created by Bao Tran and Bhagyashree Aras on 11/5/20.
//


import Foundation
import SwiftUI

class   LoginPage: UIViewController  {
        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
        //addDoneButtonOnKeyboard()
    }

    let Username: UILabel = {
        let iv = UILabel()
        iv.text = "Username"
        iv.font = UIFont(name: Fonts.Baloo, size: 35)
        iv.textColor = .white
        iv.textAlignment = .center
        iv.adjustsFontSizeToFitWidth = true
        return iv
     }()
    
    let UsernameTextField: UITextField = {
        let iv = UITextField()
        iv.layer.borderWidth = 1
        iv.layer.borderColor = UIColor.white.cgColor
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 15
        iv.attributedPlaceholder = NSAttributedString(string: "Enter Username...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        iv.textAlignment = .center
        iv.font =  UIFont(name: Fonts.Baloo, size: 15)
        iv.textColor = UIColor.FacebookBlue()
        iv.keyboardType = UIKeyboardType.default
        iv.keyboardAppearance = UIKeyboardAppearance.default
        return iv
    }()
    
    let Password: UILabel = {
        let iv = UILabel()
        iv.text = "Password"
        iv.font = UIFont(name: Fonts.Baloo, size: 20)
        iv.textColor = .white
        iv.textAlignment = .center
        iv.adjustsFontSizeToFitWidth = true
        return iv
     }()
    
    let PasswordTextField: UITextField = {
        let iv = UITextField()
        iv.layer.borderWidth = 1
        iv.layer.borderColor = UIColor.white.cgColor
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 15
        iv.attributedPlaceholder = NSAttributedString(string: "Enter Password...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        iv.textAlignment = .center
        iv.font =  UIFont(name: Fonts.Baloo, size: 15)
        iv.textColor = UIColor.FacebookBlue()
        iv.keyboardType = UIKeyboardType.default
        iv.keyboardAppearance = UIKeyboardAppearance.default
        return iv
    }()
    lazy var Continue: UIButton = {
        let iv = UIButton()
        iv.titleLabel?.adjustsFontSizeToFitWidth = true
        iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 25)
        iv.setTitle("Continue", for: .normal)
        iv.setTitleColor(UIColor.FacebookBlue(), for: .normal)
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        return iv
    }()
    
    @objc func SignInNavigation() {

    }

    func addDoneButtonOnKeyboard()
     {
         let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))

         let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
         let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.done, target: self, action: #selector(UIInputViewController.dismissKeyboard))
        done.tintColor = .white
         
         let items = NSMutableArray()
         items.add(flexSpace)
         items.add(done)

         doneToolbar.items = (items as! [UIBarButtonItem])
         doneToolbar.sizeToFit()

         self.UsernameTextField.inputAccessoryView = doneToolbar
         self.PasswordTextField.inputAccessoryView = doneToolbar

     }
    
   func configureViewComponents() {
    view.addSubview(Username)
    Username.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(UsernameTextField)
    UsernameTextField.anchor(top: Username.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 15, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Password)
    Password.anchor(top: UsernameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 25, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(PasswordTextField)
    PasswordTextField.anchor(top: Password.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 15, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    view.addSubview(Continue)
    Continue.anchor(top: PasswordTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 50, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 50)
    
    }
    
}


extension LoginPage
{
    func setupToHideKeyboardOnTapOnView()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard))

        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}



