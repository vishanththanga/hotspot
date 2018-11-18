//
//  NetworksPaymentController.swift
//  Hotspot
//
//  Created by Kartik on 2018-11-18.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class NetworksPaymentController: UIViewController {
    
    let backButtonView = JobSelectionBackButtonView()
    
    let informationLabel = UILabel().then {
        $0.textColor = UI.Colors.orange
        $0.font = UI.Font.demiBold(25)
        $0.text = "This transaction will send 0.2 IOTA to the networks host in return for 15 minutes time on their network"
        $0.numberOfLines = 0
    }
    
    let iotaButton = SendIotaButtonView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
}

extension NetworksPaymentController {
    func layoutViews() {
        view.addSubview(backButtonView)
        backButtonView.easy.layout(Top(40), Left(20), Width(40), Height(35))
        
        view.addSubview(informationLabel)
        informationLabel.easy.layout(Top(10).to(backButtonView), Left(25), Right(25))
        
        view.addSubview(iotaButton)
        iotaButton.easy.layout(Top(20).to(informationLabel), Width(250), Height(50), CenterX())
    }
}
