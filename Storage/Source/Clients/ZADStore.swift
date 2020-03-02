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
    func save(_ entity: ZADObjectRGDB, for nameSpace: String) throws
    func get(for key:String, nameSpace: String) throws -> ZADObjectRGDB?
}

extension GRDBContext: ZADStorageType {
    public func save(_ entity: ZADObjectRGDB, for nameSpace: String) throws {
        try dbQueue.inDatabase { db in
            if try entity.exists(db) {
                try entity.update(db)
            }else {
                try entity.insert(db)
            }
        }
    }
    
    public func get(for key:String, nameSpace: String) throws -> ZADObjectRGDB? {
        return try dbQueue.inDatabase { db in
            let result = try ZADObjectRGDB.filter(key == key).fetchOne(db)
            return result
        }
    }
    
    
}
public final class ZADObjectRGDB: GRDBEntityType {
    public var id:Int64
    public var dataKey:String
    public var object:Data
    
    public init(id:Int64, dataKey: String, object: Data) {
        self.id = id
        self.dataKey = dataKey
        self.object = object
    }
    
    public class var databaseTableName: String {
        return "ZADObjectRGDB"
    }
    
    public required init(row: Row) {
        id = row["id"]
        object = row["object"]
        dataKey = row["dataKey"]
    }
    
    public func encode(to container: inout PersistenceContainer) {
        container["id"] = id
        container["object"] = object
        container["dataKey"] = dataKey
    }
    
    public func didInsert(with rowID: Int64, for column: String?) {
        id = rowID
    }
}


