//
//  CatalogAds.swift
//  BusinessModel
//
//  Created by Danh Dang on 12/5/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

// Catalog ads contains all type of ads for the catalog: sponsored products, catalog banner, bannerTiles,...
@objcMembers
public final class CatalogAds: NSObject, Codable, AutoTestInitializer {
    public let catalogConfig: CatalogPositionConfig?
    public let sponsoredProducts: [Product]?
    public let catalogBanner: Banner?
    public let bannerTiles: [Banner]?

    public init(
        catalogConfig: CatalogPositionConfig?,
        sponsoredProducts: [Product]?,
        catalogBanner: Banner?,
        bannerTiles: [Banner]?
    ) {
        self.catalogConfig = catalogConfig
        self.sponsoredProducts = sponsoredProducts
        self.catalogBanner = catalogBanner
        self.bannerTiles = bannerTiles
    }
}
