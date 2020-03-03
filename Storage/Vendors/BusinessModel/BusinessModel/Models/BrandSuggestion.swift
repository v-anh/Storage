//
//  BrandSuggestion.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: BrandSuggestion Model

@objcMembers
public final class BrandSuggestion: NSObject, Codable, AutoTestInitializer {
    public let brandUrl: String
    public let brandId: String
    public let name: String
    public let productCount: Int

    public init(brandUrl: String, brandId: String, name: String, productCount: Int) {
        self.brandUrl = brandUrl
        self.brandId = brandId
        self.name = name
        self.productCount = productCount
    }
}
