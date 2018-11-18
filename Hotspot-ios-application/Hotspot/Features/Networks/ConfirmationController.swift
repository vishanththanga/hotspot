//
//  ConfirmationController.swift
//  Hotspot
//
//  Created by Kartik on 2018-11-18.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class ConfirmationController: UIViewController {
    
    let backButton = ConfirmationBackButtonView()
    
    let confirmationIcon = UIImageView().then {
        $0.image = UIImage(named: "strongIcon")
        $0.contentMode = .scaleAspectFit
    }
    
    let confirmedLabel = UILabel().then {
        $0.textColor = UI.Colors.orange
        $0.font = UI.Font.demiBold(25)
        $0.text = "CONNECTION CONFIRMED"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutViews()
    }
}

extension ConfirmationController {
    func layoutViews() {
        view.addSubview(backButton)
        backButton.easy.layout(Top(40), Left(20), Width(40), Height(35))
        
        view.addSubview(confirmationIcon)
        confirmationIcon.easy.layout(Top(20).to(backButton), CenterX(), Width(50), Height(50))
        
        view.addSubview(confirmedLabel)
        confirmedLabel.easy.layout(CenterX(), Top(30).to(confirmationIcon))
        
    }
}
