//
//  BrandEntity.swift
//  Storage
//
//  Created by Anh Tran on 3/6/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation

public protocol BrandEntityType {
    var brandId: String { get }
    var image: String { get set}
    var keywords: String { get set}
    var name: String { get set}
}


struct BrandRGDB: Codable, BrandEntityType, GRDBEntityType {
    public var brandId: String
    public var image: String
    public var keywords: String
    public var name: String

    init(brandId: String ,image: String, keywords: String, name: String) {
        self.brandId = brandId
        self.image = image
        self.keywords = keywords
        self.name = name
    }
    
    static func map(_ brand: BrandEntityType) -> BrandRGDB {
        return BrandRGDB(brandId: brand.brandId, image: brand.image, keywords: brand.keywords, name: brand.name)
    }
}
