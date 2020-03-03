//
//  Currency.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Currency Model

@objcMembers
public final class Currency: NSObject, Codable, AutoTestInitializer {
    public let iso: String
    public let thousandSeparator: String
    public let decimals: Int
    public let decimalsSeparator: String
    public let displayFormat: String

    public init(iso: String, thousandSeparator: String, decimals: Int, decimalsSeparator: String, displayFormat: String) {
        self.iso = iso
        self.thousandSeparator = thousandSeparator
        self.decimals = decimals
        self.decimalsSeparator = decimalsSeparator
        self.displayFormat = displayFormat
    }
}
