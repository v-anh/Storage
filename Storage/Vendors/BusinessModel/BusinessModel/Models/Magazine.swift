//
//  Magazine.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Magazine Model

@objcMembers
public final class Magazine: NSObject, Codable, AutoTestInitializer {
    public let backgroundURL: Image?
    public let key: String
    public let label: String
    public let magazineDescription: String
    public let logoURL: String

    public init(backgroundURL: Image?, key: String, label: String, magazineDescription: String, logoURL: String) {
        self.backgroundURL = backgroundURL
        self.key = key
        self.label = label
        self.magazineDescription = magazineDescription
        self.logoURL = logoURL
    }
}
