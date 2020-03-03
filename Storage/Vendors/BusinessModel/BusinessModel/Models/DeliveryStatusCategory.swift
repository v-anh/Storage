//
//  DeliveryStatusCategory.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: DeliveryStatusCategory Model

@objcMembers
public final class DeliveryStatusCategory: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public var activated: Bool
    public let statuses: [DeliveryStatus]?

    public init(label: String, activated: Bool, statuses: [DeliveryStatus]?) {
        self.label = label
        self.activated = activated
        self.statuses = statuses
    }
}
