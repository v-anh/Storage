//
//  InitConstants.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: InitConstants Model

@objcMembers
public final class InitConstants: NSObject, Codable, AutoTestInitializer {
    public let backgroundImageKey: String

    public init(backgroundImageKey: String) {
        self.backgroundImageKey = backgroundImageKey
    }
}
