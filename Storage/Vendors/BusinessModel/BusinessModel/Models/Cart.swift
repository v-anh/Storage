//
//  Cart.swift
//  ZaloraNetworking-iOS
//
//  Created by NghiaTran on 1/24/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Cart: NSObject, Codable, AutoTestInitializer {
    let name: String

    public init(name: String) {
        self.name = name
    }
}
