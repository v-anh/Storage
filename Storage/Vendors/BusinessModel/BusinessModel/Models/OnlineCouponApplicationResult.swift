//
//  OnlineCouponApplicationResult.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineCouponApplicationResult: NSObject, Codable, AutoTestInitializer {
    public let success: Bool
    public let hardError: Bool
    public let message: String

    public init(success: Bool, hardError: Bool, message: String) {
        self.success = success
        self.hardError = hardError
        self.message = message
        super.init()
    }
}
