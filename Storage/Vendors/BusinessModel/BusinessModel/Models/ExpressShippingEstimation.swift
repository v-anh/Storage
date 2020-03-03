//
//  ExpressShipping.swift
//  BusinessModel
//
//  Created by Asim Parvez on 22/01/2020.
//  Copyright © 2020 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class ExpressShippingEstimation: NSObject, Codable, AutoTestInitializer {
    public let feeAmount: Double
    public let timeText: String

    public init(feeAmount: Double, timeText: String) {
        self.feeAmount = feeAmount
        self.timeText = timeText
    }
}
