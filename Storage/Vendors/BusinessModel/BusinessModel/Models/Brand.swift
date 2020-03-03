//
//  Brand.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Brand Model

@objcMembers
public final class Brand: NSObject, Codable, AutoTestInitializer {
    public let brandId: String
    public let image: String
    public let keywords: String
    public let name: String

    public init(brandId: String, image: String, keywords: String, name: String) {
        self.brandId = brandId
        self.image = image
        self.keywords = keywords
        self.name = name
    }
}
