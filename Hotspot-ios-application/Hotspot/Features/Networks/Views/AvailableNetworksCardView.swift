//
//  AvailableNetworksCardView.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

protocol NetworkSelectionDelegate: class {
    func didTapNetwork()
}

class AvailableNetworksCardView: UIView {
    
    weak var delegate: NetworkSelectionDelegate?
    
    private let contentView = UIView()
    
    let selectionButton = UIButton().then {
        $0.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        
    }
    
    @objc func handleButtonTap() {
        delegate?.didTapNetwork()
    }
    
    private let locationLabel = UILabel().then {
        $0.textColor = UI.Colors.black
        $0.font = UI.Font.demiBold(20)
    }
    
    private let distanceLabel = UILabel().then {
        $0.textColor = UI.Colors.lightGrey
        $0.font = UI.Font.regular(15)
    }
    
    private let statusImage = UIImageView().then {
        $0.contentMode = .scaleAspectFit
    }
    
    init(location: String, distance: String, strength: String){
        super.init(frame: .zero)
        locationLabel.text = location
        distanceLabel.text = distance
        statusImage.image = UIImage(named: strength)
        
        setupProperties()
        layoutViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AvailableNetworksCardView {
    func setupProperties() {
        contentView.backgroundColor = UI.Colors.white
        contentView.layer.cornerRadius = 7.0
        contentView.layer.shadowColor = UI.Colors.black.cgColor
        contentView.layer.shadowOpacity = 0.4
        contentView.layer.shadowRadius = 10.0
        contentView.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    func layoutViews() {
        addSubview(contentView)
        contentView.easy.layout(Edges())
        
        contentView.addSubview(selectionButton)
        selectionButton.easy.layout(Edges())
        
        contentView.addSubview(locationLabel)
        locationLabel.easy.layout(Top(), Left(5))
        
        contentView.addSubview(distanceLabel)
        distanceLabel.easy.layout(Top().to(locationLabel), Left(5))
        
        contentView.addSubview(statusImage)
        statusImage.easy.layout(Right(5), Width(50), Height(50), CenterY())
    }
}
