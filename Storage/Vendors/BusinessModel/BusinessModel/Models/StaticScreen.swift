//
//  StaticScreen.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/26/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: StaticScreen Model

@objcMembers
public final class StaticScreen: NSObject, Codable, AutoTestInitializer {
    public let title: String
    public let body: String

    public init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}
