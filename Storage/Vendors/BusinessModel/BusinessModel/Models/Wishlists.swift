//
//  Wishlists.swift
//  Pluto
//
//  Created by NghiaTran on 3/15/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Wishlists: NSObject, Codable, AutoTestInitializer {
    public let wishLists: [Wishlist]?

    public init(wishLists: [Wishlist]?) {
        self.wishLists = wishLists
    }
}
