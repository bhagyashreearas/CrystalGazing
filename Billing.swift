//
//  Billing.swift
//  CrystalGazing
//
//  Created by Bao Tran on 11/5/20.
//

import Foundation
import SwiftUI

class BillingPage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BabyBlue()
        configureViewComponets()
    }
    
    let BalanceDue: UILabel = {
        let b = UILabel()
        b.text = "Balance Due"
        b.font = UIFont(name: Fonts.Baloo, size: 50)
        b.textColor = UIColor.Gray()
        b.adjustsFontSizeToFitWidth = true
        return b
    }()
    
    lazy var Pay: UIButton = {
        let iv = UIButton()
        iv.titleLabel?.adjustsFontSizeToFitWidth = true
        iv.titleLabel?.font = UIFont(name: Fonts.Baloo, size: 75)
        iv.setTitle("Pay", for: .normal)
        iv.setTitleColor(UIColor.Gray(), for: .normal)
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 25
        iv.addTarget(self, action: #selector(PaymentNavigation), for: UIControl.Event.touchUpInside)
        return iv
    }()
    
    @objc func PaymentNavigation() {
        navigationController?.pushViewController(PayPage(), animated: true)
    }
    
    func configureViewComponets(){
        view.addSubview(BalanceDue)
        BalanceDue.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 100, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 150)
        
        view.addSubview(Pay)
        Pay.anchor(top: BalanceDue.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 400, paddingLeft: 25, paddingBottom: 0, paddingRight: 25, width: 0 , height: 75)
        
    }
    
}
