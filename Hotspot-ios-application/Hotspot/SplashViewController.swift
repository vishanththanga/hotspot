//
//  SplashViewController.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import Lottie
import EasyPeasy

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UI.Colors.white
        
        
        let imageView = UIImageView(image: UIImage(named: "hotspotLogo"))
        view.addSubview(imageView)
        imageView.easy.layout(CenterX(), Width(325), Height(110), Top(270))
        
        let animationView = LOTAnimationView(name: "splash-view-controller-animation")
        self.view.addSubview(animationView)
        print("\(animationView.animationDuration)")
        animationView.play()
    }
}
