
//
//  ProductSimple.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 2/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation


@objcMembers
public final class ProductSimple: NSObject, Codable, AutoTestInitializer {
    public let simpleSku: String
    public let price: String
    public let quantity: Int
    public let size: String
    public let estimatedDelivery: String
    public let attributes: [String: String]?
    public let specialPrice: String
    public let urgencyMessage: String
    public let stockStatus: StockStatus
    public let shipmentType: String
    public let isShippedFromOverseas: Bool
    public let uniqueSellingPoints: [UniqueSellingPoint]?
    public let isEligibleForShippingEstimation: Bool

    public init(simpleSku: String, price: String, quantity: Int, size: String, estimatedDelivery: String, attributes: [String: String]?, specialPrice: String, urgencyMessage: String, stockStatus: StockStatus, shipmentType: String, isShippedFromOverseas: Bool, uniqueSellingPoints: [UniqueSellingPoint]?, isEligibleForShippingEstimation: Bool) {
        self.simpleSku = simpleSku
        self.price = price
        self.quantity = quantity
        self.size = size
        self.estimatedDelivery = estimatedDelivery
        self.attributes = attributes
        self.specialPrice = specialPrice
        self.urgencyMessage = urgencyMessage
        self.stockStatus = stockStatus
        self.shipmentType = shipmentType
        self.isShippedFromOverseas = isShippedFromOverseas
        self.uniqueSellingPoints = uniqueSellingPoints
        self.isEligibleForShippingEstimation = isEligibleForShippingEstimation
    }
    
}

//Enum defined to map thrift enums that are used in main app
@objc public enum StockStatus : Int, Codable {
    case inStock
    case lowInStock
    case lastItemInStock
    case outOfStock
}
