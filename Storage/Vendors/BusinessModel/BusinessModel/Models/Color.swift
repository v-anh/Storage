//
//  Color.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Color Model

@objcMembers
public final class Color: NSObject, Codable, AutoTestInitializer {
    public let color: String
    public let hexValue: String
    public let imageUrl: String

    public init(color: String, hexValue: String, imageUrl: String) {
        self.color = color
        self.hexValue = hexValue
        self.imageUrl = imageUrl
    }
}
