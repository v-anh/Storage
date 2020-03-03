//
//  NavigationGroup.swift
//  Pluto
//
//  Created by NghiaTran on 3/15/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class NavigationGroup: NSObject, Codable, AutoTestInitializer {
    public let navigationsGroupName: String
    public let navigationsDisplayType: String
    public let navigations: [Navigation]?

    public init(navigationsGroupName: String, navigationsDisplayType: String, navigations: [Navigation]?) {
        self.navigationsGroupName = navigationsGroupName
        self.navigationsDisplayType = navigationsDisplayType
        self.navigations = navigations
    }
}
