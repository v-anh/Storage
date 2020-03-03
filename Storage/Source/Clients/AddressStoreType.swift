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

extension Address: GRDBEntityType {
}


public protocol AddressStorageType {
    func save(_ entity: Address, for nameSpace: String) throws
    func getZADByLanguage(_ language: String) throws -> [Address]?
    func clearZADBy(_ language: String) throws
}

extension GRDBContext: AddressStorageType {
    public func save(_ entity: Address, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getZADByLanguage(_ language: String) throws -> [Address]? {
        let zadByLanguage = Address.filter(Column("language") == language)
        return try dbQueue.inDatabase { db in
            try zadByLanguage.fetchAll(db)
        }
    }
    
    public func clearAddressBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try Address.filter(Column("language") == language).deleteAll(db)
        }
    }
}
