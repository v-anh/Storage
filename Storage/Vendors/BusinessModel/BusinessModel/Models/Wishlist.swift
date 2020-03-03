//
//  Wishlist.swift
//  Pluto
//
//  Created by NghiaTran on 3/9/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Wishlist: NSObject, Codable, AutoTestInitializer {
    public let items: [WishListItem]?
    public let id: String
    public let name: String
    public let isDefault: Bool
    public let totalCount: Int

    public init(items: [WishListItem]?, id: String, name: String, isDefault: Bool, totalCount: Int) {
        self.items = items
        self.id = id
        self.name = name
        self.isDefault = isDefault
        self.totalCount = totalCount
    }
}
