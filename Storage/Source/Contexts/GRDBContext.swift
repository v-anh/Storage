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


public final class GRDBContext: StorageType {
    
    
    public var zad: ZADStorageType { return self }
    public var feed: FeedStorageType { return self }
    public var address: AddressStorageType { return self }
    
    var dbQueue: DatabaseQueue

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
        }
        return migrator
    }
}
