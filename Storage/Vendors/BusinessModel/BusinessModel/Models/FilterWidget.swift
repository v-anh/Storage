//
//  FilterWidget.swift
//  Pluto
//
//  Created by NghiaTran on 2/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import UIKit

@objcMembers
public final class FilterWidget: NSObject, Codable, AutoTestInitializer {
    public let type: String
    public let minValue: Double
    public let maxValue: Double

    public init(type: String, minValue: Double, maxValue: Double) {
        self.type = type
        self.minValue = minValue
        self.maxValue = maxValue
    }
}
