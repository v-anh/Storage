//
//  OrderItem.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: OrderItem Model

@objcMembers
public final class OrderItem: NSObject, Codable, AutoTestInitializer {
    public let orderItemId: String
    public let brand: String
    public let configSku: String
    public let simpleSku: String
    public let quantity: Int32
    public let name: String
    public let unitPrice: Double
    public let image: String
    public let size: String
    public let deliveryStatusCategories: [DeliveryStatusCategory]?
    public let selectedSizeSystem: String
    public let currentStatus: DeliveryStatus?
    public let isCancelled: Bool

    public init(orderItemId: String, brand: String, configSku: String, simpleSku: String, quantity: Int32, name: String, unitPrice: Double, image: String, size: String, deliveryStatusCategories: [DeliveryStatusCategory]?, selectedSizeSystem: String, currentStatus: DeliveryStatus?, isCancelled: Bool) {
        self.orderItemId = orderItemId
        self.brand = brand
        self.configSku = configSku
        self.simpleSku = simpleSku
        self.quantity = quantity
        self.name = name
        self.unitPrice = unitPrice
        self.image = image
        self.size = size
        self.deliveryStatusCategories = deliveryStatusCategories
        self.selectedSizeSystem = selectedSizeSystem
        self.currentStatus = currentStatus
        self.isCancelled = isCancelled
    }
}
