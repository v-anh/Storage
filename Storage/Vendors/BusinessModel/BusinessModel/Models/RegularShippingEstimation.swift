//
//  RegularShipping.swift
//  BusinessModel
//
//  Created by Asim Parvez on 22/01/2020.
//  Copyright © 2020 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class RegularShippingEstimation: NSObject, Codable, AutoTestInitializer {
    public let feeAmount: Double
    public let feeAmountAfterDiscount: Double
    public let feeText: String
    public let isFeeDiscounted: Bool
    public let timeText: String

    public init(feeAmount: Double, feeAmountAfterDiscount: Double, feeText: String, isFeeDiscounted: Bool, timeText: String) {
        self.feeAmount = feeAmount
        self.feeAmountAfterDiscount = feeAmountAfterDiscount
        self.feeText = feeText
        self.isFeeDiscounted = isFeeDiscounted
        self.timeText = timeText
    }
}
