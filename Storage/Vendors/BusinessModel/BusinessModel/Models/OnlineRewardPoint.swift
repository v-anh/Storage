//
//  OnlineRewardPoint.swift
//  Pluto
//
//  Created by Danh Dang on 2/19/19.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineRewardPoint: NSObject, Codable, AutoTestInitializer {
    public let partnerId: String
    public let valueRemaining: Double
    public let valueToRedeem: Double
    public let totalValue: Double
    public let pointsRemaining: Double
    public let pointsToRedeem: Double
    public let totalPoints: Double

    public init(partnerId: String,
                valueRemaining: Double,
                valueToRedeem: Double,
                totalValue: Double,
                pointsRemaining: Double,
                pointsToRedeem: Double,
                totalPoints: Double) {
        self.partnerId = partnerId
        self.valueRemaining = valueRemaining
        self.valueToRedeem = valueToRedeem
        self.totalValue = totalValue
        self.pointsRemaining = pointsRemaining
        self.pointsToRedeem = pointsToRedeem
        self.totalPoints = totalPoints
    }
}
