//
//  OnlineOutOfStockItem.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineOutOfStockItem: NSObject, Codable, AutoTestInitializer {
    public let sku: String
    public let name: String

    public init(sku: String, name: String) {
        self.sku = sku
        self.name = name
        super.init()
    }
}
