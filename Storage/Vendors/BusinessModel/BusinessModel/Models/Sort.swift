//
//  Sort.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 1/29/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Sort: NSObject, Codable, AutoTestInitializer {
    public let isMutuallyExclusive: Bool
    public let options: [SortOption]?

    public init(isMutuallyExclusive: Bool, options: [SortOption]?) {
        self.isMutuallyExclusive = isMutuallyExclusive
        self.options = options
    }
}
