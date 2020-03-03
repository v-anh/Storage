//
//  Rule.swift
//  Pluto
//
//  Created by NghiaTran on 3/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Rule: NSObject, Codable, AutoTestInitializer {
    public let type: String
    public let rule: String
    public let errorMessage: String

    public init(type: String, rule: String, errorMessage: String) {
        self.type = type
        self.rule = rule
        self.errorMessage = errorMessage
    }
}
