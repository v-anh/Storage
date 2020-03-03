//
//  ProductCareAttribute.swift
//  Pluto
//
//  Created by Danh Dang on 3/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductCareAttribute: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let value: String

    public init(label: String, value: String) {
        self.label = label
        self.value = value
    }
}
