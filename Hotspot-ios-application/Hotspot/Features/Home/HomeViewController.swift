//
//  HomeViewController.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//


import UIKit
import EasyPeasy
import Then

class HomeViewController: UIViewController {
    
    let headerView = HomeHeaderView()
    
    let introductionLabel = UILabel().then {
        $0.font = UI.Font.demiBold(20)
        $0.text = "Welcome to Hotspot, a decentralized platform to connect you to the centralized net!"
        $0.textColor = UI.Colors.orange
        $0.numberOfLines = 0
    }
    
    let contentViewA = UIView().then {
        $0.backgroundColor = UI.Colors.orange
        $0.layer.cornerRadius = 10
    }
    
    let locationImage = UIImageView().then {
        $0.image = UIImage(named: "locationIcon")
    }
    
    let locationsLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(20)
        $0.text = "LOCATIONS"
    }
    
    let contentViewB = UIView().then {
        $0.backgroundColor = UI.Colors.orange
        $0.layer.cornerRadius = 10
    }
    
    let membersImage = UIImageView().then {
        $0.image = UIImage(named: "memberIcon")
    }
    
    let membersLabel = UILabel().then {
        $0.textColor = UI.Colors.white
        $0.font = UI.Font.demiBold(20)
        $0.text = "MEMBERS"
    }

    let mapView = HomeHotspotsCardView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutViews()
    }
}

extension HomeViewController {
    func layoutViews() {
        view.addSubview(headerView)
        headerView.easy.layout(Top(), Width(375), Height(100))
        
        view.addSubview(introductionLabel)
        introductionLabel.easy.layout(Top(10).to(headerView), LeftMargin(15), RightMargin(15))
        
        view.addSubview(contentViewA)
        contentViewA.easy.layout(Left(15), Top(20).to(introductionLabel), Width(160), Height(100))
        
        contentViewA.addSubview(locationImage)
        locationImage.easy.layout(CenterX(), Top(10), Width(40), Height(40))
        
        contentViewA.addSubview(locationsLabel)
        locationsLabel.easy.layout(CenterX(), Top(10).to(locationImage))
        
        view.addSubview(contentViewB)
        contentViewB.easy.layout(Right(15), Top(20).to(introductionLabel), Width(160), Height(100))
        
        contentViewB.addSubview(membersImage)
        membersImage.easy.layout(CenterX(), Top(10), Width(40), Height(40))
        
        contentViewB.addSubview(membersLabel)
        membersLabel.easy.layout(CenterX(), Top(10).to(membersImage))
        
        view.addSubview(mapView)
        mapView.easy.layout(CenterX(), Top(40).to(contentViewA), Width(300), Height(300))

    }
}


