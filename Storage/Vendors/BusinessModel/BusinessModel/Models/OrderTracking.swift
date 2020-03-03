//
//  OrderTracking.swift
//  Pluto
//
//  Created by Minh Nguyen on 12/18/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: OrderTracking Model

@objcMembers
public final class OrderTracking: NSObject, Codable, AutoTestInitializer {
    public let message: String
    public let trackingNumber: String
    public let updatedAt: String

    public init(message: String, trackingNumber: String, updatedAt: String) {
        self.message = message
        self.trackingNumber = trackingNumber
        self.updatedAt = updatedAt
    }
}
