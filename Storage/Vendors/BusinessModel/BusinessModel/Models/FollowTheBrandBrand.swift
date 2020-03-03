//
//  FollowTheBrandBrand.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class FollowTheBrandBrand: NSObject, Codable, AutoTestInitializer {
    public let brandAcquisitionManager: String
    public let brandId: String
    public let brandTag: String
    public let brandTier: String
    public let country: String
    public let name: String
    public let nameEn: String
    public let status: String
    public let updatedAt: String
    public let urlKey: String
    
    public init(brandAcquisitionManager: String,
                brandId: String,
                brandTag: String,
                brandTier: String,
                country: String,
                name: String,
                nameEn: String,
                status: String,
                updatedAt: String,
                urlKey: String) {
        self.brandAcquisitionManager = brandAcquisitionManager
        self.brandId = brandId
        self.brandTag = brandTag
        self.brandTier = brandTier
        self.country = country
        self.name = name
        self.nameEn = nameEn
        self.status = status
        self.updatedAt = updatedAt
        self.urlKey = urlKey
    }
}
