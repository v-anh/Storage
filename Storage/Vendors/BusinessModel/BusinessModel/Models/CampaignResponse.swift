//
//  CampaignResponse.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: CampaignResponse Model

@objcMembers
public final class CampaignResponse: NSObject, Codable, AutoTestInitializer {
    public let content: String
    public let expiryTime: Int32

    public init(content: String, expiryTime: Int32) {
        self.content = content
        self.expiryTime = expiryTime
    }
}
