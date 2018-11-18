//
//  NetworksViewController.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import EasyPeasy
import Then

class NetworksViewController: UIViewController {
    
    let headerView = HomeHeaderView()
    
    private let networksLabel = UILabel().then {
        $0.textColor = UI.Colors.orange
        $0.font = UI.Font.demiBold(25)
        $0.text = "Available Networks"
    }
    
    let job1 = AvailableNetworksCardView(location: "Ryerson University", distance: "50 m from your location", strength: "strongIcon")
    
    let job2 = AvailableNetworksCardView(location: "University of Toronto", distance: "5 km from your location", strength: "weakIcon")
    
    let job3 = AvailableNetworksCardView(location: "RH King Academy", distance: "15 km from your location", strength: "weakIcon")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutViews()
    }
}

extension NetworksViewController {
    func layoutViews() {
        view.addSubview(headerView)
        headerView.easy.layout(Top(), Width(375), Height(100))
        
        view.addSubview(networksLabel)
        networksLabel.easy.layout(Top(10).to(headerView), Left(20))
        
        view.addSubview(job1)
        job1.easy.layout(Top(10).to(networksLabel), Width(300), Height(60), CenterX())
        
        view.addSubview(job2)
        job2.easy.layout(Top(10).to(job1), Width(300), Height(60), CenterX())
        
        view.addSubview(job3)
        job3.easy.layout(Top(10).to(job2), Width(300), Height(60), CenterX())
        
    }
}
