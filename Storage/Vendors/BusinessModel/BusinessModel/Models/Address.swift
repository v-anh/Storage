//
//  Address.swift
//  Pluto
//
//  Created by NghiaTran on 3/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Address: NSObject, Codable, AutoTestInitializer {
    public let addressId: String
    public let createAt: String
    public let firstAddress: String
    public let firstName: String
    public let isDefaultBilling: Bool
    public let isDefaultShipping: Bool
    public let lastName: String
    public let phone: String
    public let postcode: String
    public let secondAddress: String
    public let updateAt: String
    public let cellPhone: String
    public let city: String
    public let cityIndex: String
    public let region: String
    public let regionIndex: String
    public let addressThirdLevel: String
    public let landMark: String

    public init(addressId: String, createAt: String, firstAddress: String, firstName: String, isDefaultBilling: Bool, isDefaultShipping: Bool, lastName: String, phone: String, postcode: String, secondAddress: String, updateAt: String, cellPhone: String, city: String, cityIndex: String, region: String, regionIndex: String, addressThirdLevel: String, landMark: String) {
        self.addressId = addressId
        self.createAt = createAt
        self.firstAddress = firstAddress
        self.firstName = firstName
        self.isDefaultBilling = isDefaultBilling
        self.isDefaultShipping = isDefaultShipping
        self.lastName = lastName
        self.phone = phone
        self.postcode = postcode
        self.secondAddress = secondAddress
        self.updateAt = updateAt
        self.cellPhone = cellPhone
        self.city = city
        self.cityIndex = cityIndex
        self.region = region
        self.regionIndex = regionIndex
        self.addressThirdLevel = addressThirdLevel
        self.landMark = landMark
    }
}
