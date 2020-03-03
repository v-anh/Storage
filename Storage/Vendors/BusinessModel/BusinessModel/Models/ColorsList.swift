//
//  ColorsList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: ColorsList Model

@objcMembers
public final class ColorsList: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let colors: [Color]?

    public init(md5: String, colors: [Color]?) {
        self.md5 = md5
        self.colors = colors
    }
}
