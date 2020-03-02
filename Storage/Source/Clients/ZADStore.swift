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

public struct ZADObjectRGDB:Codable, GRDBEntityType {
    public var id:Int64
    public var dataKey:String
    public var object:Data
    
    public init(id:Int64, dataKey: String, object: Data) {
        self.id = id
        self.dataKey = dataKey
        self.object = object
    }
    
    //Define database table name
    public static var databaseTableName: String {
        return "ZADObjectRGDB"
    }
    
    // Define database columns from CodingKeys
    enum Columns {
        static let id = Column(CodingKeys.id)
        static let dataKey = Column(CodingKeys.dataKey)
        static let objects = Column(CodingKeys.object)
    }
}


