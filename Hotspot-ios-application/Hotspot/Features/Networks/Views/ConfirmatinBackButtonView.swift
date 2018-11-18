//
//  ConfirmatinBackButtonView.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-18.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol ConfirmationBackButtonDelegate: class {
    func didTapBack()
}

class ConfirmationBackButtonView: UIView {
    
    weak var delegate: ConfirmationBackButtonDelegate?
    
    let backButtonView = UIImageView().then {
        $0.image = UIImage(named: "backIcon")
    }
    
    let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapBack()
    }
    
    init(){
        super.init(frame: .zero)
        layoutViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ConfirmationBackButtonView {
    func layoutViews(){
        addSubview(backButtonView)
        backButtonView.easy.layout(Edges())
        
        addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
    }
}


