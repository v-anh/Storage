//
//  RewardPoints.swift
//  Pluto
//
//  Created by Danh Dang on 2/14/19.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class RewardPoints: NSObject, Codable, AutoTestInitializer {
    public let dbs: RewardPointScheme
    public let posb: RewardPointScheme

    public init(dbs: RewardPointScheme,
                posb: RewardPointScheme) {
        self.dbs = dbs
        self.posb = posb
    }
}
