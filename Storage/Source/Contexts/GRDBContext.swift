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
    internal class var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        migrator.eraseDatabaseOnSchemaChange = true
        migrator.registerMigration("Zalora-v1") { database in
            try database.create(table: ZADObjectRGDB.databaseTableName) { tableDefinition in
                tableDefinition.column("id",.integer).primaryKey()
                tableDefinition.column("dataKey",.text)
                tableDefinition.column("objects",.blob)
            }
        }
        return migrator
    }
}
