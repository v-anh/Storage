//
//  BrandList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: BrandList Model

@objcMembers
public final class BrandList: NSObject, Codable, AutoTestInitializer {
    public let brands: [Brand]?

    public init(brands: [Brand]?) {
        self.brands = brands
    }
}
