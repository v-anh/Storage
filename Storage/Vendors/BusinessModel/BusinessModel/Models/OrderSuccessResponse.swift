//
//  OrderSuccessResponse.swift
//  BusinessModel
//
//  Created by Asim Parvez on 07/11/2019.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class OrderSuccessResponse: NSObject, Codable, AutoTestInitializer {
   
    public let orderNumber: String
    public let address: Address?
    public let grandTotal: Double
    public let convertedGrandTotal: Double
    public let taxAmount: Double
    public let shippingAmount: Double
    public let discountAmount: Double
    public let promoCode: String
    public let thirdPartyRedirectUrl: String
    public let paymentMethod: String
    public let createdDateString: String

    public init(orderNumber: String, address: Address?, grandTotal: Double, convertedGrandTotal: Double, taxAmount: Double, shippingAmount: Double, discountAmount: Double, promoCode: String, thirdPartyRedirectUrl: String, paymentMethod: String, createdDateString: String) {
        self.orderNumber = orderNumber
        self.address = address
        self.grandTotal = grandTotal
        self.convertedGrandTotal = convertedGrandTotal
        self.taxAmount = taxAmount
        self.shippingAmount = shippingAmount
        self.discountAmount = discountAmount
        self.promoCode = promoCode
        self.thirdPartyRedirectUrl = thirdPartyRedirectUrl
        self.paymentMethod = paymentMethod
        self.createdDateString = createdDateString
    }
}
