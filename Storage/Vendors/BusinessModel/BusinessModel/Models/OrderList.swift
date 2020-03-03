//
//  OrderList.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: OrderList Model

@objcMembers
public final class OrderList: NSObject, Codable, AutoTestInitializer {
    public let orders: [Order]?

    public init(orders: [Order]?) {
        self.orders = orders
    }
}
