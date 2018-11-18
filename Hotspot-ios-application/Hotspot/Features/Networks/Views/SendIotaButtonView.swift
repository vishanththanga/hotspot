//
//  SendIotaButtonView.swift
//  Hotspot
//
//  Created by Kartik on 2018-11-18.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol SendIotaButtonDelegate: class {
    func didTapSendIota()
}

class SendIotaButtonView: UIView {
    
    weak var delegate: SendIotaButtonDelegate?
    
    let contentView = UIView().then {
        $0.layer.cornerRadius = 25
        $0.backgroundColor = UI.Colors.orange
    }
    
    let sendIotaLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(35)
        $0.text = "Send IOTA"
    }
    
    let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapSendIota()
    }
    
    init(){
        super.init(frame: .zero)
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SendIotaButtonView {
    func layoutViews(){
        addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
        
        contentView.addSubview(sendIotaLabel)
        sendIotaLabel.easy.layout(CenterX(), CenterY())
    }
}


