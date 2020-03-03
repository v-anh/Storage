//
//  RewardPointScheme.swift
//  Pluto
//
//  Created by Danh Dang on 2/14/19.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class RewardPointScheme: NSObject, Codable, AutoTestInitializer {
    public let partnerId: String
    public let name: String
    public let pointTerm: String
    public let logoURL: String
    public let points: Double
    public let value: Double
    public let enabled: Bool

    public init(partnerId: String,
                name: String,
                pointTerm: String,
                logoURL: String,
                points: Double,
                value: Double,
                enabled: Bool) {
        self.partnerId = partnerId
        self.name = name
        self.pointTerm = pointTerm
        self.logoURL = logoURL
        self.points = points
        self.value = value
        self.enabled = enabled
    }
}
