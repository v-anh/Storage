//
//  File.swift
//  Pluto
//
//  Created by Asim Parvez on 10/08/2019.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlinePriceBreakdownLine: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let value: String?

    public init(name: String, value: String?) {
        self.name = name
        self.value = value
        super.init()
    }
}
