//
//  CatalogConfig.swift
//  BusinessModel
//
//  Created by Danh Dang on 12/5/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

public enum CatalogAdsType: Int {
    case zaloraProduct
    case sponsoredProduct
    case bannerTile
}

@objcMembers
public final class CatalogPositionConfig: NSObject, Codable, AutoTestInitializer {
    // Expected columns for the position config
    public let columns: Int
    
    // The order of ads should be displayed on the screen
    public let positions: [Int]?
    
    public var positionConfig: [CatalogAdsType]? {
        guard let positions = positions else { return nil }
        return positions.map { CatalogAdsType(rawValue: $0) ?? .zaloraProduct }
    }
    
    /*
     assuming following products display, columns and positions drive where ads element fills
     1  -  1
     0  -  0
     0  -  2
     ...
     */
    public init(columns: Int, positions: [Int]?) {
        self.columns = columns
        self.positions = positions
    }
}
