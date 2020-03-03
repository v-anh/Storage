//
//  Version.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Version Model

@objcMembers
public final class Version: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let minVersion: String
    public let curVersion: String
    public let optionalUpdate: String
    public let forceUpdate: String

    public init(md5: String, minVersion: String, curVersion: String, optionalUpdate: String, forceUpdate: String) {
        self.md5 = md5
        self.minVersion = minVersion
        self.curVersion = curVersion
        self.optionalUpdate = optionalUpdate
        self.forceUpdate = forceUpdate
    }
}
