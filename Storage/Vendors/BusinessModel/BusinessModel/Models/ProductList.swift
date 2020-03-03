//
//  ProductList.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 1/29/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ProductList: NSObject, Codable, AutoTestInitializer {
    public let products: [Product]?
    public let productCount: Int
    public let brandId: String
    public let searchImageId: String
    public let sort: Sort?
    public let filters: [Filter]?
    public let actualSearchTerm: String?
    public let selectedCategoryIDs: [String]?
    public let selectedSegment: String
    public let menuCategories: [FilterOption]?
    public let catalogBanner: String?
    public let catalogBannerLink: String?
    public let catalogBannerAdId: String?
    public let originalSearchTerm: String
    public let correctedSearchTerm: String
    
    public init(products: [Product]?, productCount: Int, brandId: String, searchImageId: String, sort: Sort?, filters: [Filter]?, actualSearchTerm: String?, selectedCategoryIDs: [String]?, selectedSegment: String, menuCategories: [FilterOption]?, catalogBanner: String?, catalogBannerLink: String?, catalogBannerAdId: String?, originalSearchTerm: String, correctedSearchTerm: String) {
        self.products = products
        self.productCount = productCount
        self.brandId = brandId
        self.searchImageId = searchImageId
        self.sort = sort
        self.filters = filters
        self.actualSearchTerm = actualSearchTerm
        self.selectedCategoryIDs = selectedCategoryIDs
        self.selectedSegment = selectedSegment
        self.menuCategories = menuCategories
        self.catalogBanner = catalogBanner
        self.catalogBannerLink = catalogBannerLink
        self.catalogBannerAdId = catalogBannerAdId
        self.originalSearchTerm = originalSearchTerm
        self.correctedSearchTerm = correctedSearchTerm
    }
}
