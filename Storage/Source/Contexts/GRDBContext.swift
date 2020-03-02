//
//  GRDBContext.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB
import UIKit

//public struct GRDBStorageEntity {
//    public var id:Int64
//    public var dataKey:String
//    public var object:Data
//
//    public init(id:Int64, object: Data,dataKey: String) {
//        self.id = id
//        self.object = object
//        self.dataKey = dataKey
//    }
//}
//
//// Adopt FetchableRecord
//extension StorageEntity : FetchableRecord {
//    public init(row: Row) {
//        id = row["id"]
//        object = row["object"]
//        dataKey = row["dataKey"]
//    }
//}
//
//// Adopt TableRecord
//extension StorageEntity: TableRecord {
//    public static let databaseTableName = "zaloratable"
//}
//
//// Adopt MutablePersistableRecord
//extension StorageEntity: MutablePersistableRecord {
//    public func encode(to container: inout PersistenceContainer) {
//        container["id"] = id
//        container["object"] = object
//        container["dataKey"] = dataKey
//    }
//
//    mutating public func didInsert(with rowID: Int64, for column: String?) {
//        id = rowID
//    }
//}

typealias GRDBEntityType = FetchableRecord & PersistableRecord


extension Record: StorageType {
}

public final class GRDBContext {
    
    public var dbQueue : DatabaseQueue
    public init(in application: UIApplication) throws {
        let databaseURL = try FileManager.default
            .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .appendingPathComponent("db.sqlite")
        
        var grdbConfig = Configuration()
        grdbConfig.trace = { print($0) }
        
        dbQueue = try DatabaseQueue(path: databaseURL.path)
        try GRDBContext.migrator.migrate(dbQueue)
        dbQueue.setupMemoryManagement(in: application)
    }
}

extension GRDBContext {
    static var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        migrator.registerMigration("createDevelopers") { database in
            try database.create(table: "ZADObjectRGDB") { tableDefinition in
                tableDefinition.column("id",.integer).primaryKey()
                tableDefinition.column("dataKey",.text)
                tableDefinition.column("object",.blob)
            }
        }
        return migrator
    }
}

extension GRDBContext: StorageContext {
    public func addOrUpdate(_ entity: StorageType, for nameSpace: String) throws {
        guard entity is Record else {
            throw StorageErrors.Entity.wrongType
        }
        try dbQueue.inDatabase { db in
            try (entity as? Record)?.delete(db)
            try (entity as? Record)?.insert(db)
        }
    }
    
    //    public func addOrUpdate<T:StorageType>(_ entity: T, for nameSpace: String) throws {
    //        guard entity is Record else {
    //            throw StorageErrors.Entity.wrongType
    //        }
    //        try dbQueue.inDatabase { db in
    //            try (entity as? Record)?.delete(db)
    //            try (entity as? Record)?.insert(db)
    //        }
    //    }
    
    
    public func fetch<T: StorageType>(with key: String, for type: T.Type) throws -> [T]? {
        guard let entityToFetch = type as? Record.Type else {
            throw StorageErrors.Entity.wrongType
        }
        return try dbQueue.inDatabase { db in
            let result = try entityToFetch.filter(key == key).fetchAll(db)
//            completion(result.compactMap { $0 as? T })
            return result.compactMap{ $0 as? T }
        }
    }
}

public protocol ZADObject:class {
    var id:Int64 { get set }
    var dataKey:String { get set }
    var object:Data { get set }
}

public final class ZADObjectRGDB: Record {
    public var id:Int64
    public var dataKey:String
    public var object:Data
    
    public init(id:Int64, dataKey: String, object: Data) {
        self.id = id
        self.dataKey = dataKey
        self.object = object
        super.init()
    }
    
    override public class var databaseTableName: String {
        return "ZADObjectRGDB"
    }
    
    public required init(row: Row) {
        id = row["id"]
        object = row["object"]
        dataKey = row["dataKey"]
        super.init()
    }
    
    public override func encode(to container: inout PersistenceContainer) {
        container["id"] = id
        container["object"] = object
        container["dataKey"] = dataKey
    }
    
    public override func didInsert(with rowID: Int64, for column: String?) {
        id = rowID
    }
}

//extension ZADObjectRGDB: ZADObject {}
