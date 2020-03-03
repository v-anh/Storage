//
//  DeliveryStatus.swift
//  ZaloraNetworking
//
//  Created by Minh Nguyen on 9/25/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: DeliveryStatus Model

@objcMembers
public final class DeliveryStatus: NSObject, Codable, AutoTestInitializer {
    public let date: String
    public let label: String

    public init(date: String, label: String) {
        self.date = date
        self.label = label
    }
}
