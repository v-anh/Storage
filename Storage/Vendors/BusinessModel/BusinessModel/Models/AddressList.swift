//
//  AddressList.swift
//  Pluto
//
//  Created by NghiaTran on 3/20/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class AddressList: NSObject, Codable, AutoTestInitializer {
    public let shipping: Address?
    public let billing: Address?
    public let fastlane: [Address]?
    public let other: [Address]?

    public init(shipping: Address?, billing: Address?, fastlane: [Address]?, other: [Address]?) {
        self.shipping = shipping
        self.billing = billing
        self.fastlane = fastlane
        self.other = other
    }
}
