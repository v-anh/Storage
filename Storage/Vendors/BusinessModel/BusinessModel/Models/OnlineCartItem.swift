//
//  OnlineCartItem.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineCartItem: NSObject, Codable, AutoTestInitializer {
    public let product: Product?
    public let simpleSku: String
    public let quantity: Int
    public let selectedSizeSystem: String
    public let isExpressShippingEligible: Bool
    public let sourceCatalog: String
    public let deliveryPromise: String
    public let appliedCartRules: [String]?
    public let isCouponDiscountApplied: Bool
    public let isNonSaleItem: Bool
    public let totalPrice: Double
    public let discounts: [OnlinePriceBreakdownLine]?

    public init(product: Product?,
                simpleSku: String,
                quantity: Int,
                selectedSizeSystem: String,
                isExpressShippingEligible: Bool,
                sourceCatalog: String,
                deliveryPromise: String,
                appliedCartRules: [String]?,
                isCouponDiscountApplied: Bool,
                isNonSaleItem: Bool,
                totalPrice: Double,
                discounts: [OnlinePriceBreakdownLine]?) {
        self.product = product
        self.simpleSku = simpleSku
        self.quantity = quantity
        self.selectedSizeSystem = selectedSizeSystem
        self.isExpressShippingEligible = isExpressShippingEligible
        self.sourceCatalog = sourceCatalog
        self.deliveryPromise = deliveryPromise
        self.appliedCartRules = appliedCartRules
        self.isCouponDiscountApplied = isCouponDiscountApplied
        self.isNonSaleItem = isNonSaleItem
        self.totalPrice = totalPrice
        self.discounts = discounts
        super.init()
    }
}
