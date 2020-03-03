//
//  AddressOption.swift
//  Pluto
//
//  Created by Minh Nguyen on 10/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: AddressOption Model

@objcMembers
public final class AddressOption: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let value: String

    public init(label: String, value: String) {
        self.label = label
        self.value = value
    }
}
