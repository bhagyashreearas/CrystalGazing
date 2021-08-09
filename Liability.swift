//
//  Liability.swift
//  CrystalGazing
//
//  Created by Bao Tran on 11/5/20.
//

import Foundation
import SwiftUI

class LiabilityPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
    }
    
    
    
    let Details: UILabel = {
        let d = UILabel()
        d.text = "The gravitational pull of the planets and stars have drawn you to Crystal Gazing.  This app is designed to provide you a source of entertainment. IT IS NOT REAL. We are not liable for your actions. If you wish to continue to use this app please click YES. If not click NO. Thank you for visiting Crystal Gazing!"
        d.numberOfLines = 6
        d.font = UIFont(name: Fonts.Baloo, size: 400)
        d.textColor = UIColor.Gray()
        d.textAlignment = .natural
        d.adjustsFontSizeToFitWidth = true
        return d
    }()
    
    let Liability: UILabel = {
        let l = UILabel()
        l.text = "Liability"
        l.font = UIFont(name:Fonts.Baloo, size: 400)
        l.textColor = UIColor.Gray()
        l.textAlignment = .center
        l.adjustsFontSizeToFitWidth = true
        return l
    }()
    
    lazy var Yes: UIButton = {
        let y = UIButton()
        y.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        y.titleLabel?.adjustsFontSizeToFitWidth = true
        y.setTitle("YES", for: .normal)
        y.setTitleColor(UIColor.Gray(), for: .normal)
        y.backgroundColor = .white
        y.layer.cornerRadius = 25
    
        ///Remove this line when putting things togther this should point to the user login page///
        y.addTarget(self, action: #selector(SettingsPageNavigation), for: UIControl.Event.touchUpInside)
        return y
    }()
    
    lazy var No: UIButton = {
        let n = UIButton()
        n.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
        n.titleLabel?.adjustsFontSizeToFitWidth = true
        n.setTitle("NO", for: .normal)
        n.setTitleColor(UIColor.Gray(), for: .normal)
        n.backgroundColor = .white
        n.layer.cornerRadius = 25
        n.addTarget(self, action: #selector(MainNavigation), for: UIControl.Event.touchUpInside)
        return n
    }()
    
    @objc func SettingsPageNavigation() {
        navigationController?.pushViewController(SettingsPage(), animated: true)
    }
    
    @objc func MainNavigation() {
        navigationController?.pushViewController(Mainpage(), animated: true)
    }
    
    func configureViewComponents(){
        
        
        view.addSubview(Liability)
        Liability.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 150)
        
       view.addSubview(Details)
        Details.anchor(top: Liability.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 100)
        
        
        view.addSubview(No)
        No.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 100, paddingRight: 25, width: 0 , height: 75)
        
        view.addSubview(Yes)
        Yes.anchor(top: nil, left: view.leftAnchor, bottom: No.topAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 50, paddingRight: 25, width: 0 , height: 75)
        
    }
}
    


extension LiabilityPage{
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


