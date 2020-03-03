//
//  ShopByUrlList.swift
//  Pluto
//
//  Created by NghiaTran on 3/14/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class ShopByUrlList: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let shopBys: [ShopBy]?

    public init(md5: String, shopBys: [ShopBy]?) {
        self.md5 = md5
        self.shopBys = shopBys
    }
}
