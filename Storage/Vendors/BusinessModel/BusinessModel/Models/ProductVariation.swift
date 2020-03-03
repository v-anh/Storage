//
//  ProductVariation.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductVariation: NSObject, Codable, AutoTestInitializer {
    public let image: String
    public let configSku: String

    public init(image: String, configSku: String) {
        self.image = image
        self.configSku = configSku
    }
}
