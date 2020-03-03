//
//  WalletHistory.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/11/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: WalletHistory Model

@objcMembers
public final class WalletHistory: NSObject, Codable, AutoTestInitializer {
    public let transactions: [WalletTransaction]?

    public init(transactions: [WalletTransaction]?) {
        self.transactions = transactions
    }
}
