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

public final class GRDBContext: StorageContext {
    public var zad: ZADStorageType { return self }
    public var feed: FeedStorageType { return self }
    public var brand: BrandClientType { return self }
    
    var dbQueue: DatabaseQueue

    public init(in application: UIApplication? = nil, databaseName: String, trace: ((String) -> Void)? = nil) throws {
        var grdbConfig = Configuration()
               grdbConfig.trace = trace

        let databaseURL = try StorageHelper.getDatabaseUrl(databaseName: databaseName)
        dbQueue = try DatabaseQueue(path: databaseURL.path,configuration: grdbConfig)
        
        try self.applyMigration()
        
        self.setupMemmoryManagement(application)
    }
    
    public func clearAllData() {
    }
}

extension GRDBContext{
    private func applyMigration() throws {
        try GRDBContext.migrator.migrate(dbQueue)
    }
    private func setupMemmoryManagement(_ application: UIApplication?) {
        guard let application = application else {
            return
        }
        dbQueue.setupMemoryManagement(in: application)
    }
}


extension GRDBContext {
    public static var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        migrator.eraseDatabaseOnSchemaChange = true
        migrator.registerMigration("Zalora-v1") { database in
            try database.create(table: "zadObjectGRDB") { tableDefinition in
                tableDefinition.column("id", .integer).primaryKey()
                tableDefinition.column("dataKey", .text)
                tableDefinition.column("locationName", .text)
                tableDefinition.column("language", .text)
                tableDefinition.column("object", .blob)
            }
            
            try database.create(table: "feedRGDB") { tableDefinition in
                tableDefinition.autoIncrementedPrimaryKey("id")
                tableDefinition.column("feedName", .text)
                tableDefinition.column("feedPosition", .text)
            }
            
            try database.create(table: "brandRGDB") { tableDefinition in
                tableDefinition.column("brandId", .text).primaryKey()
                tableDefinition.column("image", .text)
                tableDefinition.column("keywords", .text)
                tableDefinition.column("name", .text)
            }
        }
        return migrator
    }
}
