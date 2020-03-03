//
//  HomeScreenRecommendationProduct.swift
//  Pluto
//
//  Created by Minh Nguyen on 10/12/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: ZrsProduct Model

@objcMembers
public final class HomeScreenRecommendationProduct: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let brand: String
    public let configSku: String
    public let price: String
    public let specialPrice: String
    public let mainImageUrl: String

    public init(name: String, brand: String, configSku: String, price: String, specialPrice: String, mainImageUrl: String) {
        self.name = name
        self.brand = brand
        self.configSku = configSku
        self.price = price
        self.specialPrice = specialPrice
        self.mainImageUrl = mainImageUrl
    }
}
