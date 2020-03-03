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

public final class GRDBContext: StorageType {
    private var dbQueue: DatabaseQueue
    //    public var zad: ZADStorageType { return self }

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
            try database.create(table: "ZADObject") { tableDefinition in
                tableDefinition.column("id", .integer).primaryKey()
                tableDefinition.column("dataKey", .text)
                tableDefinition.column("object", .blob)
            }
        }
        return migrator
    }
}

extension GRDBContext {
    public func createOrUpdate<T: GRDBEntityType>(_ entity: T, for _: String) throws {
        try dbQueue.inDatabase { db in
            if try entity.exists(db) {
                try entity.update(db)
            } else {
                try entity.insert(db)
            }
        }
    }

    public func fetch<T: GRDBEntityType>(for key: String, nameSpace _: String) throws -> T? {
        return try dbQueue.inDatabase { db in
            let result = try T.filter(key == key).fetchOne(db)
            return result
        }
    }

    public func delete<T: GRDBEntityType>(_ entity: T, for _: String) throws {
        return try dbQueue.inDatabase { db in
            try entity.delete(db)
        }
    }
}
