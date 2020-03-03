//
//  Product.swift
//  ZaloraNetworking-iOS
//
//  Created by NghiaTran on 1/24/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Product Model

@objcMembers
public final class Product: NSObject, Codable, AutoTestInitializer {
    public let configSku: String
    public let name: String
    public let desc: String
    public let url: String
    public let price: String
    public let brand: String
    public let attributes: [String: String]?
    public let simples: [ProductSimple]?
    public let imageList: [String]?
    public let variations: [ProductVariation]?
    public let mainImageUrl: String
    public let specialPrice: String
    public let sizeSystemBrand: String
    public let sizes: [String: [ProductSize]]?
    public let sizechartHtml: String
    public let avgRating: Double
    public let basketId: String
    public let sellerName: String
    public let minBasketSize: String
    public let breadcrumbs: [String]?
    public let brandId: String
    public let overlayUrl: String
    public let categoryIDs: [String]?
    public let color: String
    public let estimatedDelivery: String
    public let leadtimeEnabled: Bool
    public let mediaCollection: [Media]?
    public let sellerInformation: String
    public let shippingCostInformation: String
    public let shortDescription: String
    public let technicalDescription: String
    public let uniqueSellingPoints: [UniqueSellingPoint]?
    public let isShippedFromOverseas: Bool
    public let adId: String
    public let specialLabel: String
    public let markdownLabel: String
    public let isNonRefundable: Bool
    public let hasDifferentSimplePrices: Bool
    public let giftCardShipping: GiftcardShipping?
    public let isEligibleForShippingEstimation: Bool

    public init(configSku: String, name: String, desc: String, url: String, price: String, brand: String, attributes: [String: String]?, simples: [ProductSimple]?, imageList: [String]?, variations: [ProductVariation]?, mainImageUrl: String, specialPrice: String, sizeSystemBrand: String, sizes: [String: [ProductSize]]?, sizechartHtml: String, avgRating: Double, basketId: String, sellerName: String, minBasketSize: String, breadcrumbs: [String]?, brandId: String, overlayUrl: String, categoryIDs: [String]?, color: String, estimatedDelivery: String, leadtimeEnabled: Bool, mediaCollection: [Media]?, sellerInformation: String, shippingCostInformation: String, shortDescription: String, technicalDescription: String, uniqueSellingPoints: [UniqueSellingPoint]?, isShippedFromOverseas: Bool, adId: String, specialLabel: String, markdownLabel: String, isNonRefundable: Bool, hasDifferentSimplePrices: Bool, giftCardShipping: GiftcardShipping?, isEligibleForShippingEstimation: Bool) {
        self.configSku = configSku
        self.name = name
        self.desc = desc
        self.url = url
        self.price = price
        self.brand = brand
        self.attributes = attributes
        self.simples = simples
        self.imageList = imageList
        self.variations = variations
        self.mainImageUrl = mainImageUrl
        self.specialPrice = specialPrice
        self.sizeSystemBrand = sizeSystemBrand
        self.sizes = sizes
        self.sizechartHtml = sizechartHtml
        self.avgRating = avgRating
        self.basketId = basketId
        self.sellerName = sellerName
        self.minBasketSize = minBasketSize
        self.breadcrumbs = breadcrumbs
        self.brandId = brandId
        self.overlayUrl = overlayUrl
        self.categoryIDs = categoryIDs
        self.color = color
        self.estimatedDelivery = estimatedDelivery
        self.leadtimeEnabled = leadtimeEnabled
        self.mediaCollection = mediaCollection
        self.sellerInformation = sellerInformation
        self.shippingCostInformation = shippingCostInformation
        self.shortDescription = shortDescription
        self.technicalDescription = technicalDescription
        self.uniqueSellingPoints = uniqueSellingPoints
        self.isShippedFromOverseas = isShippedFromOverseas
        self.adId = adId
        self.specialLabel = specialLabel
        self.markdownLabel = markdownLabel
        self.isNonRefundable = isNonRefundable
        self.hasDifferentSimplePrices = hasDifferentSimplePrices
        self.giftCardShipping = giftCardShipping
        self.isEligibleForShippingEstimation = isEligibleForShippingEstimation
    }
}
