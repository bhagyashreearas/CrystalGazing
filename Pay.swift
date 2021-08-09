//
//  Pay.swift
//  CrystalGazing
//
//  Created by Bao Tran on 11/5/20.
//

import Foundation
import SwiftUI

class PayPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.popViewController(animated: true)
    
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponents()
    }
    
    let EnterPayment: UITextField = {
        let e = UITextField()
        e.layer.borderWidth = 1
        e.layer.borderColor = UIColor.white.cgColor
        e.backgroundColor = .white
        e.layer.cornerRadius = 15
        e.attributedPlaceholder = NSAttributedString(string: "Enter amount...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        e.textAlignment = .center
        e.font =  UIFont(name: Fonts.Baloo, size: 15)
        e.textColor = UIColor.Gray()
        e.keyboardType = UIKeyboardType.decimalPad
        e.keyboardAppearance = UIKeyboardAppearance.default
        e.addTarget(self, action: #selector(PrintTest), for: UIControl.Event.touchUpInside)
        return e
    }()
    
    lazy var Submit: UIButton = {
        let iv = UIButton()
        iv.titleLabel?.adjustsFontSizeToFitWidth = true
        iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 75)
        iv.setTitle("Submit", for: .normal)
        iv.setTitleColor(UIColor.Gray(), for: .normal)
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        iv.addTarget(self, action: #selector(SettingNavigation), for: UIControl.Event.touchUpInside)
        return iv
    }()
    
    @objc func SettingNavigation() {
        navigationController?.pushViewController(SettingsPage(), animated: true)
    }
    
    @objc func PrintTest(){
        print("payment", EnterPayment.text!)
        
    }
    
    
    
    func configureViewComponents(){
        view.addSubview(EnterPayment)
        EnterPayment.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 300, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
        view.addSubview(Submit)
        Submit.anchor(top: EnterPayment.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 200, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
    }
}
