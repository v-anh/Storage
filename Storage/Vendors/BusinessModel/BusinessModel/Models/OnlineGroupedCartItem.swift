//
//  OnlineGroupedCartItem.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/8/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class OnlineGroupedCartItem: NSObject, Codable, AutoTestInitializer {
    public let onlineCartItems: [OnlineCartItem]?
    public let sellerId: String
    public let sellerName: String
    public let shippingFee: String
    public let minimumBasketSize: String
    public let shippingFeeDifference: String
    public let isWaivedShippingFee: Bool
    public let isShippedFromOverseas: Bool
    public let internationalShippingFee: Double

    public init(onlineCartItems: [OnlineCartItem]?, sellerId: String, sellerName: String, shippingFee: String, minimumBasketSize: String, shippingFeeDifference: String, isWaivedShippingFee: Bool, isShippedFromOverseas: Bool, internationalShippingFee: Double) {
        self.onlineCartItems = onlineCartItems
        self.sellerId = sellerId
        self.sellerName = sellerName
        self.shippingFee = shippingFee
        self.minimumBasketSize = minimumBasketSize
        self.shippingFeeDifference = shippingFeeDifference
        self.isWaivedShippingFee = isWaivedShippingFee
        self.isShippedFromOverseas = isShippedFromOverseas
        self.internationalShippingFee = internationalShippingFee
        super.init()
    }
}
