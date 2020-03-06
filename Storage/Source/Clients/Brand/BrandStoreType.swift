//
//  AddressStoreType.swift
//  Storage
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol BrandClientType {
    func save(_ entity: BrandEntityType, for nameSpace: String) throws
    func getBrandByLanguage(_ language: String) throws -> [BrandEntityType]?
    func clearBrandBy(_ language: String) throws
    func delete(_ id: String) throws -> Int
}

extension GRDBContext: BrandClientType {
    public func delete(_ id: String) throws -> Int {
        return try dbQueue.inDatabase({ db in
            try BrandRGDB.filter(Column("brandId") == id).deleteAll(db)
        })
    }
    
    public func save(_ entity: BrandEntityType, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try BrandRGDB.map(entity).insert(db)
        })
    }

    public func getBrandByLanguage(_ language: String) throws -> [BrandEntityType]? {
        return try dbQueue.inDatabase { db in
            try BrandRGDB.fetchAll(db)
        }
    }
    
    public func clearBrandBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try BrandRGDB.filter(Column("language") == language).deleteAll(db)
        }
    }
}
