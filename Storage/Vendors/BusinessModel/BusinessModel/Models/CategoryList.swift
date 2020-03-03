//
//  CategoryList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: CategoryList Model

@objcMembers
public final class CategoryList: NSObject, Codable, AutoTestInitializer {
    public let categories: [ProductCategory]?

    public init(categories: [ProductCategory]?) {
        self.categories = categories
    }
}
