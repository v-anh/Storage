//
//  CategorySuggestion.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: CategorySuggestion Model

@objcMembers
public final class CategorySuggestion: NSObject, Codable, AutoTestInitializer {
    public let categoryUrl: String
    public let filteredBrandName: String
    public let filteredBrandId: String
    public let name: String
    public let categoryId: String
    public let productCount: Int

    public init(categoryUrl: String, filteredBrandName: String, filteredBrandId: String, name: String, categoryId: String, productCount: Int) {
        self.categoryUrl = categoryUrl
        self.filteredBrandName = filteredBrandName
        self.name = name
        self.categoryId = categoryId
        self.productCount = productCount
        self.filteredBrandId = filteredBrandId
    }
}
