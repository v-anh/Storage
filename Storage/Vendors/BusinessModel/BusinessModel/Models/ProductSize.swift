//
//  ProductSize.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductSize: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let position: String

    public init(label: String, position: String) {
        self.label = label
        self.position = position
    }
}
