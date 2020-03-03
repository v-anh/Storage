//
//  Order.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Order Model

@objcMembers
public final class Order: NSObject, Codable, AutoTestInitializer {
    public let date: String
    public let salesOrderId: Int64
    public let orderNumber: Int64
    public let orderAmount: Double
    public let items: [OrderItem]?
    public let billingAddress: Address?
    public let shippingAddress: Address?
    public let paymentMethod: String

    public init(date: String, salesOrderId: Int64, orderNumber: Int64, orderAmount: Double, items: [OrderItem]?, billingAddress: Address?, shippingAddress: Address?, paymentMethod: String) {
        self.date = date
        self.salesOrderId = salesOrderId
        self.orderNumber = orderNumber
        self.orderAmount = orderAmount
        self.items = items
        self.billingAddress = billingAddress
        self.shippingAddress = shippingAddress
        self.paymentMethod = paymentMethod
    }
}
