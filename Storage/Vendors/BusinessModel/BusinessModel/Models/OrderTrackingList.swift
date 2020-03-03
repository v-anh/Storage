//
//  OrderTrackingList.swift
//  Pluto
//
//  Created by Minh Nguyen on 12/18/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: OrderTrackingList Model

@objcMembers
public final class OrderTrackingList: NSObject, Codable, AutoTestInitializer {
    public let trackings: [OrderTracking]?

    public init(trackings: [OrderTracking]?) {
        self.trackings = trackings
    }
}
