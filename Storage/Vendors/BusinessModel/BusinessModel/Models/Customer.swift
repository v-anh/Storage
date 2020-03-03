//
//  Customer.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/11/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Customer Model

@objcMembers
public final class Customer: NSObject, Codable, AutoTestInitializer {
    public let customerId: String
    public let gender: String
    public let email: String
    public let birthday: String
    public let firstName: String
    public let lastName: String
    public let password: String
    public let isNew: Bool
    public let createdAt: String
    public let updatedAt: String
    public let zuid: String
    public let wallet: Wallet?
    public let orderCount: Int32
    public let isVIP: Bool

    public init(customerId: String, gender: String, email: String, birthday: String, firstName: String, lastName: String, password: String, isNew: Bool, createdAt: String, updatedAt: String, zuid: String, wallet: Wallet?, orderCount: Int32, isVIP: Bool) {
        self.customerId = customerId
        self.gender = gender
        self.email = email
        self.birthday = birthday
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        self.isNew = isNew
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.zuid = zuid
        self.wallet = wallet
        self.orderCount = orderCount
        self.isVIP = isVIP
    }
}
