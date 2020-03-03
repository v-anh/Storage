//
//  FollowTheBrandBrandList.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class FollowTheBrandBrandList: NSObject, Codable, AutoTestInitializer {
    public let brands: [FollowTheBrandBrand]?
    public let nextPage: String
    public let previousPage: String
    
    public init(brands: [FollowTheBrandBrand]?,
                nextPage: String,
                previousPage: String) {
        self.brands = brands
        self.nextPage = nextPage
        self.previousPage = previousPage
    }
}

