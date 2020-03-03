//
//  OnlineCartRule.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineCartRule: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let amount: Double

    public init(name: String, amount: Double) {
        self.name = name
        self.amount = amount
        super.init()
    }
}
