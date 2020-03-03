//
//  GroupedOrder.swift
//  Pluto
//
//  Created by Minh Nguyen on 12/18/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: GroupedOrder Model

@objcMembers
public final class GroupedOrder: NSObject, Codable, AutoTestInitializer {
    public let orderId: String
    public let orderItemGroups: [OrderItemGroup]?
    public let orderNumber: String

    public init(orderId: String, orderItemGroups: [OrderItemGroup]?, orderNumber: String) {
        self.orderId = orderId
        self.orderItemGroups = orderItemGroups
        self.orderNumber = orderNumber
    }
}
