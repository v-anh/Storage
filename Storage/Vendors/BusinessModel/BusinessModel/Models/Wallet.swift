//
//  Wallet.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Wallet Model

@objcMembers
public final class Wallet: NSObject, Codable, AutoTestInitializer {
    public let credit: Double

    public init(credit: Double) {
        self.credit = credit
    }
}
