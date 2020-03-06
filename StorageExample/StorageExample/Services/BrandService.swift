//
//  BrandService.swift
//  StorageExample
//
//  Created by Anh Tran on 3/4/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import Combine
import Storage
import BusinessModel

protocol BrandServiceProtocol {
    func getBrandList() -> AnyPublisher<[Brand],Error>
    func delete(id:String) -> AnyPublisher<Int,Error>
    func addRandomBrand() -> AnyPublisher<Void,Error>
}

struct BrandService: BrandServiceProtocol {
    func delete(id: String) -> AnyPublisher<Int, Error> {
        Just(id).tryCompactMap { language in
            return try Storage.shared.storageContext?.brand.delete(id)
        }.eraseToAnyPublisher()
    }
    
    func getBrandList() -> AnyPublisher<[Brand],Error> {
        return Just("EN").tryCompactMap { language in
            return try Storage.shared.storageContext?.brand.getBrandByLanguage("SG")?.map(Brand.map(_:))
        }.eraseToAnyPublisher()
    }
    
    func addRandomBrand() -> AnyPublisher<Void,Error> {
        let randomBrand = ["Zalora", "Adidas", "Nike", "Zara"].shuffled().first!
        let randomKeyWork = ["Keyword 1", "Keyword 2", "Keyword 3", "Keyword 4"].shuffled().first!
        let brand = Brand(brandId: UUID().uuidString, image: "", keywords: randomKeyWork, name: randomBrand)
        
        return Just(brand).tryCompactMap { language in
            try Storage.shared.storageContext?.brand.save(brand, for: "SG")
        }.eraseToAnyPublisher()
    }
}


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
