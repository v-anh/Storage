
//
//  OnlineCart.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineCart: NSObject, Codable, AutoTestInitializer {
    
    public let groupedCartItems: [OnlineGroupedCartItem]?
    public let outOfStockItems: [OnlineOutOfStockItem]?
    public let cartRules: [OnlineCartRule]?
    public let couponCode: String
    public let couponMoneyValue: Double
    public let walletCredits: Double
    public let shippingAmount: Double
    public let shippingDiscountAmount: Double
    public let taxAmount: Double
    public let wrappingAmount: Double
    public let subTotal: Double
    public let grandTotal: Double
    public let vipMembershipInfoCMS: String
    public let vipMembershipCartItem: OnlineCartItem?
    public let isVipMembershipEnabled: Bool
    public let isVipCustomer: Bool
    public let couponApplicationResult: OnlineCouponApplicationResult?
    public let shouldHideMembershipProgram: Bool
    public let internationalShippingAmount: Double
    public let internationalShippingThreshold: Double
    public let rewardPoint: OnlineRewardPoint?
    public let priceBreakdowns: [OnlinePriceBreakdownSection]?
    public let isBestPromoApplied: Bool
    public let totalDiscountAmount: Double
    public let bestPromoApplicationResult: OnlineBestPromoApplicationResult?
    
    
    public init(groupedCartItems: [OnlineGroupedCartItem]?, outOfStockItems: [OnlineOutOfStockItem]?, cartRules: [OnlineCartRule]?, couponCode: String, couponMoneyValue: Double, walletCredits: Double, shippingAmount: Double, shippingDiscountAmount: Double, taxAmount: Double, wrappingAmount: Double, subTotal: Double, grandTotal: Double, vipMembershipInfoCMS: String, vipMembershipCartItem: OnlineCartItem?, isVipMembershipEnabled: Bool, isVipCustomer: Bool, couponApplicationResult: OnlineCouponApplicationResult?, shouldHideMembershipProgram: Bool, internationalShippingAmount: Double, internationalShippingThreshold: Double, rewardPoint: OnlineRewardPoint?, priceBreakdowns: [OnlinePriceBreakdownSection]?, isBestPromoApplied: Bool, totalDiscountAmount: Double, bestPromoApplicationResult: OnlineBestPromoApplicationResult?) {
        self.groupedCartItems = groupedCartItems
        self.outOfStockItems = outOfStockItems
        self.cartRules = cartRules
        self.couponCode = couponCode
        self.couponMoneyValue = couponMoneyValue
        self.walletCredits = walletCredits
        self.shippingAmount = shippingAmount
        self.shippingDiscountAmount = shippingDiscountAmount
        self.taxAmount = taxAmount
        self.wrappingAmount = wrappingAmount
        self.subTotal = subTotal
        self.grandTotal = grandTotal
        self.vipMembershipInfoCMS = vipMembershipInfoCMS
        self.vipMembershipCartItem = vipMembershipCartItem
        self.isVipMembershipEnabled = isVipMembershipEnabled
        self.isVipCustomer = isVipCustomer
        self.couponApplicationResult = couponApplicationResult
        self.shouldHideMembershipProgram = shouldHideMembershipProgram
        self.internationalShippingAmount = internationalShippingAmount
        self.internationalShippingThreshold = internationalShippingThreshold
        self.rewardPoint = rewardPoint
        self.priceBreakdowns = priceBreakdowns
        self.isBestPromoApplied = isBestPromoApplied
        self.totalDiscountAmount = totalDiscountAmount
        self.bestPromoApplicationResult = bestPromoApplicationResult
        super.init()
    }
}
