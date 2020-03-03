//
//  ShopBy.swift
//  Pluto
//
//  Created by NghiaTran on 3/15/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ShopBy: NSObject, Codable, AutoTestInitializer {
    public let segment: String
    public let key: String
    public let navigationGroups: [NavigationGroup]?

    public init(segment: String, key: String, navigationGroups: [NavigationGroup]?) {
        self.segment = segment
        self.key = key
        self.navigationGroups = navigationGroups
    }
}
