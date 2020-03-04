//
//  AddressStoreType.swift
//  Storage
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB
import BusinessModel

extension Brand: GRDBEntityType {}

public protocol BrandStoreType {
    func save(_ entity: Brand, for nameSpace: String) throws
    func getBrandByLanguage(_ language: String) throws -> [Brand]?
    func clearBrandBy(_ language: String) throws
    func delete(_ id: String) throws -> Int
}

extension GRDBContext: BrandStoreType {
    public func delete(_ id: String) throws -> Int {
        return try dbQueue.inDatabase({ db in
            try Brand.filter(Column("brandId") == id).deleteAll(db)
        })
    }
    
    public func save(_ entity: Brand, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getBrandByLanguage(_ language: String) throws -> [Brand]? {
        return try dbQueue.inDatabase { db in
            try Brand.fetchAll(db)
        }
    }
    
    public func clearBrandBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try Brand.filter(Column("language") == language).deleteAll(db)
        }
    }
}
