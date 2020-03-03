//
//  ZADStore.swift
//  Storage
//
//  Created by Anh Tran on 3/2/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol ZADStorageType {
    func save<T: GRDBEntityType>(_ entity: T, for nameSpace: String) throws
    func get<T: GRDBEntityType>(for key: String, nameSpace: String) throws -> T?
}

extension GRDBContext: ZADStorageType {
    public func save<T: GRDBEntityType>(_ entity: T, for nameSpace: String) throws {
        try createOrUpdate(entity, for: nameSpace)
    }

    public func get<T: GRDBEntityType>(for key: String, nameSpace: String) throws -> T? {
        return try fetch(for: key, nameSpace: nameSpace)
    }
}
