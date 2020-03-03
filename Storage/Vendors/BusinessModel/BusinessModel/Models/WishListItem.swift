
//
//  WishListItem.swift
//  Pluto
//
//  Created by NghiaTran on 3/9/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class WishListItem: NSObject, Codable, AutoTestInitializer {
    public let itemId: String
    public let product: Product?
    public let simpleSku: String
    public let createdAt: Int
    public let selectedSizeSystem: String

    public init(itemId: String, product: Product?, simpleSku: String, createdAt: Int, selectedSizeSystem: String) {
        self.itemId = itemId
        self.product = product
        self.simpleSku = simpleSku
        self.createdAt = createdAt
        self.selectedSizeSystem = selectedSizeSystem
    }
}
