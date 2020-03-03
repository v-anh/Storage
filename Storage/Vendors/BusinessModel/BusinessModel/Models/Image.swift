//
//  Image.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/4/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Image: NSObject, Codable, AutoTestInitializer {
    public let phonePortrait: String
    public let tabletPortrait: String
    public let tabletLandscape: String
    public let backgroundColor: String

    public init(phonePortrait: String, tabletPortrait: String, tabletLandscape: String, backgroundColor: String) {
        self.phonePortrait = phonePortrait
        self.tabletPortrait = tabletPortrait
        self.tabletLandscape = tabletLandscape
        self.backgroundColor = backgroundColor
    }
}
