//
//  SortOption.swift
//  Pluto
//
//  Created by NghiaTran on 2/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class SortOption: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let parameter: String

    public init(label: String, parameter: String) {
        self.label = label
        self.parameter = parameter
    }
}
