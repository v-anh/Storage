//
//  UniqueSellingPoint.swift
//  Pluto
//
//  Created by NghiaTran on 3/16/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class UniqueSellingPoint: NSObject, Codable, AutoTestInitializer {
    public let extraInfomation: String
    public let iconUrl: String
    public let tooltip: String
    public let uspDescription: String
    public let learnMoreCmsBlock: String

    public init(extraInfomation: String, iconUrl: String, tooltip: String, uspDescription: String, learnMoreCmsBlock: String) {
        self.extraInfomation = extraInfomation
        self.iconUrl = iconUrl
        self.tooltip = tooltip
        self.uspDescription = uspDescription
        self.learnMoreCmsBlock = learnMoreCmsBlock
    }
}
