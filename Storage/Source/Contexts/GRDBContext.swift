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

public typealias GRDBEntityType = FetchableRecord & PersistableRecord


protocol GRDBType {
    var dbQueue : DatabaseQueue { get }
    static var migrator: DatabaseMigrator { get set }
}

public final class GRDBContext {
    internal var dbQueue : DatabaseQueue
    
    public var zad: ZADStorageType { return self }
    
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
    
    internal class var migrator: DatabaseMigrator {
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


//============Client===================
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

public protocol ZADObject:class {
    var id:Int64 { get set }
    var dataKey:String { get set }
    var object:Data { get set }
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
