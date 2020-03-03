//
//  ProductReview.swift
//  Pluto
//
//  Created by NghiaTran on 2/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductReview: NSObject, Codable, AutoTestInitializer {
    public let title: String
    public let detail: String
    public let nickname: String
    public let createdAt: String
    public let ratings: [ReviewRating]?

    public init(title: String, detail: String, nickname: String, createdAt: String, ratings: [ReviewRating]?) {
        self.title = title
        self.detail = detail
        self.nickname = nickname
        self.createdAt = createdAt
        self.ratings = ratings
    }
}
