//
//  ReviewRating.swift
//  Pluto
//
//  Created by NghiaTran on 2/27/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ReviewRating: NSObject, Codable, AutoTestInitializer {
    public let reviewRatingId: String
    public let code: String
    public let title: String
    public let value: String
    public let max: String

    public init(reviewRatingId: String, code: String, title: String, value: String, max: String) {
        self.reviewRatingId = reviewRatingId
        self.code = code
        self.title = title
        self.value = value
        self.max = max
    }
}
