//
//  GroupedOrderList.swift
//  Pluto
//
//  Created by Minh Nguyen on 12/19/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: GroupedOrderList Model

@objcMembers
public final class GroupedOrderList: NSObject, Codable, AutoTestInitializer {
    public let groupedOrders: [GroupedOrder]?

    public init(groupedOrders: [GroupedOrder]?) {
        self.groupedOrders = groupedOrders
    }
}
