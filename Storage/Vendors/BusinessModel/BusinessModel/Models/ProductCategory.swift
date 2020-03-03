//
//  ProductCategory.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/6/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Category Model

@objcMembers
public final class ProductCategory: NSObject, Codable, AutoTestInitializer {
    public let parent: String
    public let name: String
    public let segments: String
    public let categoryId: String
    public let subTitle: String
    public let previewImageUrl: String

    public init(parent: String, name: String, segments: String, categoryId: String, subTitle: String, previewImageUrl: String) {
        self.parent = parent
        self.name = name
        self.segments = segments
        self.categoryId = categoryId
        self.subTitle = subTitle
        self.previewImageUrl = previewImageUrl
    }
}
