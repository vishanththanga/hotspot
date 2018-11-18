//
//  NetworksFlowController.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import NetworkExtension

class NetworksFlowController: UIViewController {
    private let networkViewController = NetworksViewController()
    private let networkPaymentController = NetworksPaymentController()
    private let confirmationController = ConfirmationController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkViewController.job1.delegate = self
        networkPaymentController.backButtonView.delegate = self
        networkPaymentController.iotaButton.delegate = self
        
        confirmationController.backButton.delegate = self
        
        start()
    }
    
}

extension NetworksFlowController {
    func start() {
        add(childController: networkViewController)
    }
}

extension NetworksFlowController: NetworkSelectionDelegate {
    func didTapNetwork() {
        remove(childController: networkViewController)
        add(childController: networkPaymentController)
    }
}

extension NetworksFlowController: JobSelectionBackButtonDelegate {
    func didTapBackJobSelection() {
        remove(childController: networkPaymentController)
        add(childController: networkViewController)
    }
}

extension NetworksFlowController: SendIotaButtonDelegate {
    func didTapSendIota() {
        print("Connection Established")
        remove(childController: networkPaymentController)
        add(childController: confirmationController)
        sleep(3)
        print("Connection Failed")
        
    }
}

extension NetworksFlowController: ConfirmationBackButtonDelegate {
    func didTapBack() {
        remove(childController: confirmationController)
        add(childController: networkPaymentController)
    }
}
