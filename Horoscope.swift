//
//  File.swift
//  CrystalGazing
//
//  Created by bhagyashree aras on 11/6/20.
//

import Foundation
import SwiftUI
class HoroscopePage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
    }
    
let Horoscope: UILabel = {
    let l = UILabel()
    l.text = "Horoscope"
    l.font = UIFont(name:Fonts.Baloo, size: 400)
    l.textColor = UIColor.Gray()
    l.textAlignment = .center
    l.adjustsFontSizeToFitWidth = true
    return l
}()

lazy var Business: UIButton = {
    let y = UIButton()
    y.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
    y.titleLabel?.adjustsFontSizeToFitWidth = true
    y.setTitle("Business Horoscope", for: .normal)
    y.setTitleColor(UIColor.Gray(), for: .normal)
    y.backgroundColor = .white
    y.layer.cornerRadius = 25

    ///Remove this line when putting things togther this should point to the user login page///
    y.addTarget(self, action: #selector(SettingsPageNavigation), for: UIControl.Event.touchUpInside)
    return y
}()

lazy var Personal: UIButton = {
    let n = UIButton()
    n.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 50)
    n.titleLabel?.adjustsFontSizeToFitWidth = true
    n.setTitle("Personal Horoscope", for: .normal)
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
    
    view.addSubview(Horoscope)
    Horoscope.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 150)
    
    
    view.addSubview(Business)
    Business.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 100, paddingRight: 25, width: 0 , height: 75)
    
    view.addSubview(Personal)
    Personal.anchor(top: nil, left: view.leftAnchor, bottom: Business.topAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 25, paddingBottom: 50, paddingRight: 25, width: 0 , height: 75)
    
}
}

