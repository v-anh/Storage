//
//  WalletTransaction.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/11/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: WalletTransaction Model

@objcMembers
public final class WalletTransaction: NSObject, Codable, AutoTestInitializer {
    public let timeStamp: String
    public let label: String
    public let credited: Double
    public let spent: Double
    public let expirationDate: String

    public init(timeStamp: String, label: String, credited: Double, spent: Double, expirationDate: String) {
        self.timeStamp = timeStamp
        self.label = label
        self.credited = credited
        self.spent = spent
        self.expirationDate = expirationDate
    }
}
