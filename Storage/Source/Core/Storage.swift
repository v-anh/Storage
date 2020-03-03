//
//  Storage.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol ClientType {
//    var zad: ZADStorageType { get }
}

public protocol GRDBType {
    static var migrator: DatabaseMigrator { get }
    func createOrUpdate<T: GRDBEntityType>(_ entity: T, for nameSpace: String) throws
    func fetch<T: GRDBEntityType>(for key: String, nameSpace: String) throws -> T?
    func delete<T: GRDBEntityType>(_ entity: T, for nameSpace: String) throws
}

public typealias GRDBEntityType = Codable & FetchableRecord & PersistableRecord
public typealias StorageType = ClientType & GRDBType

public struct StorageConfiguration {
    public let path: String
    public init(_ path: String) {
        self.path = path
    }
}

public class StorageManager {
    // MARK: - Public properties

    public static var shared = StorageManager()

    public static func setup(storageContext: StorageType) {
        shared.storageContext = storageContext
    }

    // MARK: - Private properties

    public var storageContext: StorageType?
}

public struct SortDescriptor {
    let key: String
    let ascending: Bool

    public init(key: String, ascending: Bool = true) {
        self.key = key
        self.ascending = ascending
    }
}
