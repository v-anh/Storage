//
//  Shipping.swift
//  BusinessModel
//
//  Created by Asim Parvez on 22/01/2020.
//  Copyright © 2020 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class ShippingEstimation: NSObject, Codable, AutoTestInitializer {
    public let regularShipping: RegularShippingEstimation?
    public let expressShipping: ExpressShippingEstimation?

    public init(regularShipping: RegularShippingEstimation?, expressShipping: ExpressShippingEstimation?) {
        self.regularShipping = regularShipping
        self.expressShipping = expressShipping
    }
}
