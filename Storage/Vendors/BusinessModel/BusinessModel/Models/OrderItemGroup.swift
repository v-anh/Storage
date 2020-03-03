//
//  OrderItemGroup.swift
//  Pluto
//
//  Created by Minh Nguyen on 12/18/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: OrderItemGroup Model

@objcMembers
public final class OrderItemGroup: NSObject, Codable, AutoTestInitializer {
    public let groupName: String
    public let isTracked: Bool
    public let lastUpdate: String
    public let orderItems: [OrderItem]?
    public let shipmentProviderName: String
    public let shipmentProviderUrl: String
    public let shipmentTrackingNumber: String
    public let trackingStatus: String

    public init(groupName: String, isTracked: Bool, lastUpdate: String, orderItems: [OrderItem]?, shipmentProviderName: String, shipmentProviderUrl: String, shipmentTrackingNumber: String, trackingStatus: String) {
        self.groupName = groupName
        self.isTracked = isTracked
        self.lastUpdate = lastUpdate
        self.orderItems = orderItems
        self.shipmentProviderName = shipmentProviderName
        self.shipmentProviderUrl = shipmentProviderUrl
        self.shipmentTrackingNumber = shipmentTrackingNumber
        self.trackingStatus = trackingStatus
    }
}
