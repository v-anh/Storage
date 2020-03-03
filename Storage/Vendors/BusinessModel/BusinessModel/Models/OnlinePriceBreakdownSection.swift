//
//  OnlinePriceBreakdownSection.swift
//  Pluto
//
//  Created by Asim Parvez on 10/08/2019.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlinePriceBreakdownSection: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let category: String
    public let lines: [OnlinePriceBreakdownLine]?

    public init(name: String, category: String, lines: [OnlinePriceBreakdownLine]?) {
        self.name = name
        self.lines = lines
        self.category = category
        super.init()
    }
}
