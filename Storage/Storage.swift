//
//  Storage.swift
//  Storage
//
//  Created by Anh Tran on 2/27/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB
//===============CLIENT=======================================


//=============================================================
public struct StorageConfiguration {
    public let path: String
    public init(_ path:String){
        self.path = path
    }
}

public class StorageManager {
    // MARK: - Private properties
    public var storageContext: GRDBContext?
    
    // MARK: - Public properties
    public static var shared = StorageManager()
    
    public static func setup(storageContext: GRDBContext) {
        shared.storageContext = storageContext
    }
    
}

public struct SortDescriptor {
    let key: String
    let ascending: Bool

    public init(key: String, ascending: Bool = true) {
        self.key = key
        self.ascending = ascending
    }
}

 /*
public protocol StorageContext {
    
    func store<T:StorageEntityType>(_ object: T, key: String, md5: String, nameSpace: String) throws
    
    
//    typealias FetchCompletionClosure<T> = ([T]?) -> Void
    
//    func create<T: StorageEntityType>(_ entity: T) throws
//
//    func addOrUpdate<T: StorageEntityType>(_ entity: T) throws
//
//    func save<T: StorageEntityType>(_ entity: T, key: String) throws
//
//    func update<T: StorageEntityType>(_ entity: T) throws
//
//    func delete<T: StorageEntityType>(_ entity: T, key: String) throws
//
//    func fetch<T: StorageEntityType>(completion: @escaping FetchCompletionClosure<T>) throws
//
//    func fetch<T: StorageEntityType>(predicate: NSPredicate?, sortDescriptors: [SortDescriptor]?, completion: @escaping FetchCompletionClosure<T>) throws
}

//public extension StorageContext {
//    func fetch<T: StorageEntityType>(completion: @escaping FetchCompletionClosure<T>) throws {
//        try self.fetch(predicate: nil, sortDescriptors: nil, completion: completion)
//    }
//}
 
class GRDBObject {
    
}

public class GRDBContext: StorageContext {
    
    let kObjectKeyName = "objectkey"
    let kObjectBlobName = "object"
    let kObjectMd5Name = "md5"
    let kObjectClassName = "objectclass"
    private(set) var dbQueue : DatabaseQueue
    
    public init(configuration: StorageConfiguration) {
        self.dbQueue = DatabaseQueue(configuration: Configuration())
    }
    
    public func store<T:StorageEntityType>(_ object: T, key: String, md5: String, nameSpace: String) throws {
        let tableName = "permanentCacheTable\(nameSpace)"
        try dbQueue.inTransaction { db in
            do{
                let content = NSKeyedArchiver.archivedData(withRootObject: object)
                try db.execute(sql: "CREATE TABLE IF NOT EXISTS \(tableName) (\(kObjectKeyName) TEXT, %@ \(kObjectBlobName), \(kObjectMd5Name) TEXT, \(kObjectClassName) TEXT)")
                try db.execute(sql: "DELETE FROM \(tableName) WHERE  \(kObjectKeyName) = '\(key)'")
                try db.execute(sql: "INSERT INTO \(tableName) VALUES (?, ?, ?, ?)",
                    arguments: [key,content,md5,String(describing: object)])
            }
            return .commit
        }
    }
    
  
    func create<T:StorageEntityType>(_ entity: T) throws {
        try dbQueue.inDatabase { db  in
            try db.execute(sql: "CREATE TABLE IF NOT EXISTS \(entity.name) (\(entity.key) TEXT, %@ \(entity.blob), \(entity.md5) TEXT, \(entity.className) TEXT)")
        }
    }

    func addOrUpdate<T:StorageEntityType>(_ entity: T) throws {
        try dbQueue.inTransaction { db in
            do{
                let content = try NSKeyedArchiver.archivedData(withRootObject: entity.data, requiringSecureCoding: true)
                try db.execute(sql: "CREATE TABLE IF NOT EXISTS \(entity.name) (\(entity.key) TEXT, %@ \(entity.blob), \(entity.md5) TEXT, \(entity.className) TEXT)")
                try db.execute(sql: "DELETE FROM \(entity.name) WHERE  \(entity.name) = '\(entity.md5)'")
                try db.execute(sql: "INSERT INTO \(entity.name) VALUES (?, ?, ?, ?)",
                    arguments: [entity.key,content,entity.md5,entity.className])
            }
            return .commit
        }
    }

    func save<T>(_ entity: T, key: String) throws where T : StorageEntityType {

    }

    func update<T>(_ entity: T) throws where T : StorageEntityType {

    }

    func delete<T>(_ entity: T, key: String) throws where T : StorageEntityType {

    }

    func fetch<T>(predicate: NSPredicate?, sortDescriptors: [SortDescriptor]?, completion: @escaping ([T]?) -> Void) throws where T : StorageEntityType {

    }
    
}
 
 */
