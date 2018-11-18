//
//  HotspotDevice.swift
//  Hotspot
//
//  Created by Thayallan Srinathan on 2018-11-17.
//  Copyright © 2018 Hotspot. All rights reserved.
//

import UIKit
import DeviceKit

struct HotspotDevice {
    
    let device = Device()
    
    func isiPhoneX() -> Bool {
        return device.isOneOf([.iPhoneX, .simulator(.iPhoneX)])
    }
}
