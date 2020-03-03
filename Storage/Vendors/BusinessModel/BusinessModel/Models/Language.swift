//
//  Language.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Language Model

@objcMembers
public final class Language: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let iso: String
    public let flag: String
    public let code: String
    public let isDefault: Bool
    public let display: Bool

    public init(name: String, iso: String, flag: String, code: String, isDefault: Bool, display: Bool) {
        self.name = name
        self.iso = iso
        self.flag = flag
        self.code = code
        self.isDefault = isDefault
        self.display = display
    }
}
