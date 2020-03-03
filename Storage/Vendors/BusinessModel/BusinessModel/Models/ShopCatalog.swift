//
//  ShopCatalog.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: ShopCatalog Model

@objcMembers
public final class ShopCatalog: NSObject, Codable, AutoTestInitializer {
    public let key: String
    public let label: String
    public let catalogDescription: String
    public let segments: SegmentList?
    public let gaKey: String
    public let logo: String
    public let backgroundImageURL: Image?
    public let logoURL: String

    public init(key: String, label: String, catalogDescription: String, segments: SegmentList?, gaKey: String, logo: String, backgroundImageURL: Image?, logoURL: String) {
        self.key = key
        self.label = label
        self.catalogDescription = catalogDescription
        self.segments = segments
        self.gaKey = gaKey
        self.logo = logo
        self.backgroundImageURL = backgroundImageURL
        self.logoURL = logoURL
    }
}
