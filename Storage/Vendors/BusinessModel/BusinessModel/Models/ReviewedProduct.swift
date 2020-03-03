//
//  ReviewedProduct.swift
//  Pluto
//
//  Created by NghiaTran on 2/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ReviewedProduct: NSObject, Codable, AutoTestInitializer {
    public let configSku: String
    public let name: String
    public let reviewCount: Int
    public let review: [ProductReview]?
    public let aggregateRatings: [ReviewRating]?

    public init(configSku: String, name: String, reviewCount: Int, review: [ProductReview]?, aggregateRatings: [ReviewRating]?) {
        self.configSku = configSku
        self.name = name
        self.reviewCount = reviewCount
        self.review = review
        self.aggregateRatings = aggregateRatings
    }
}
