//
//  Brand.swift
//  StorageExample
//
//  Created by Anh Tran on 3/9/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import Storage

class Brand: BrandEntityType {
    var brandId: String
    
    var image: String
    
    var keywords: String
    
    var name: String
    
    init(brandId: String, image: String, keywords: String, name: String) {
        self.brandId = brandId
        self.image = image
        self.keywords = keywords
        self.name = name
    }
    
    static func map(_ brand: BrandEntityType) -> Brand {
        return Brand(brandId: brand.brandId, image: brand.image, keywords: brand.keywords, name: brand.name)
    }
}
