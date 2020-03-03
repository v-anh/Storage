//
//  Segment.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Segment Model

@objcMembers
public final class Segment: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let imageUrl: String
    public let key: String
    public let shopGenderLabel: String
    public let onSplashScreen: Bool

    public init(label: String, imageUrl: String, key: String, shopGenderLabel: String, onSplashScreen: Bool) {
        self.label = label
        self.imageUrl = imageUrl
        self.key = key
        self.shopGenderLabel = shopGenderLabel
        self.onSplashScreen = onSplashScreen
    }
}
