//
//  Settings.swift
//  CrystalGazing
//
//  Created by Bao Tran on 11/5/20.
//

import Foundation
import SwiftUI

class SettingsPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
    }
    
    lazy var AccountDetails: UIButton = {
        let a = UIButton()
        a.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        a.titleLabel?.adjustsFontSizeToFitWidth = true
        a.setTitle("Account Details", for: .normal)
        a.setTitleColor(UIColor.Gray(), for: .normal)
        a.backgroundColor = .white
        a.layer.cornerRadius = 25
        return a
    }()
    
    lazy var Subscriptions: UIButton = {
        let a = UIButton()
        a.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        a.titleLabel?.adjustsFontSizeToFitWidth = true
        a.setTitle("Subscriptions", for: .normal)
        a.setTitleColor(UIColor.Gray(), for: .normal)
        a.backgroundColor = .white
        a.layer.cornerRadius = 25
        return a
    }()
    
    lazy var LoginHistory: UIButton = {
        let a = UIButton()
        a.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        a.titleLabel?.adjustsFontSizeToFitWidth = true
        a.setTitle("Login History", for: .normal)
        a.setTitleColor(UIColor.Gray(), for: .normal)
        a.backgroundColor = .white
        a.layer.cornerRadius = 25
        return a
    }()
    
    lazy var Billings: UIButton = {
        let a = UIButton()
        a.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        a.titleLabel?.adjustsFontSizeToFitWidth = true
        a.setTitle("Billings", for: .normal)
        a.setTitleColor(UIColor.Gray(), for: .normal)
        a.backgroundColor = .white
        a.layer.cornerRadius = 25
        a.addTarget(self,action: #selector(BillingNavigation), for: UIControl.Event.touchUpInside)
        return a
    }()
    
    lazy var SignOut: UIButton = {
        let a = UIButton()
        a.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        a.titleLabel?.adjustsFontSizeToFitWidth = true
        a.setTitle("Sign Out", for: .normal)
        a.setTitleColor(UIColor.Gray(), for: .normal)
        a.backgroundColor = .white
        a.layer.cornerRadius = 25
        a.addTarget(self,action: #selector(MainNavigation), for: UIControl.Event.touchUpInside)
        return a
    }()
    
    @objc func MainNavigation() {
        navigationController?.pushViewController(Mainpage(), animated: true)
    }
    
    @objc func BillingNavigation() {
        navigationController?.pushViewController(BillingPage(), animated: true)
    }
    
    
    
    func configureViewComponents(){
        
        view.addSubview(AccountDetails)
        AccountDetails.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 125, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)

        
        view.addSubview(Subscriptions)
        Subscriptions.anchor(top: AccountDetails.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 75, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
        view.addSubview(LoginHistory)
        LoginHistory.anchor(top: Subscriptions.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 75, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
        view.addSubview(Billings)
        Billings.anchor(top: LoginHistory.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 75, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
        view.addSubview(SignOut)
        SignOut.anchor(top: Billings.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 75, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
    }
    
    
    
    
    
    
}
