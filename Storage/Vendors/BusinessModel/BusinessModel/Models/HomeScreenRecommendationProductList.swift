//
//  HomeScreenRecommendationProductList.swift
//  Pluto
//
//  Created by Minh Nguyen on 10/12/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class HomeScreenRecommendationProductList: NSObject, Codable, AutoTestInitializer {
    public let title: String
    public let cursor: String
    public let hasNextPage: Bool?
    public let products: [HomeScreenRecommendationProduct]
    
    public init(title: String,cursor: String, hasNextPage: Bool?, products: [HomeScreenRecommendationProduct]) {
        self.title = title
        self.cursor = cursor
        self.hasNextPage = hasNextPage
        self.products = products
    }
}

