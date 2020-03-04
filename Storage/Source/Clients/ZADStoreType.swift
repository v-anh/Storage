//
//  ZADStore.swift
//  Storage
//
//  Created by Anh Tran on 3/2/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public struct ZADObjectGRDB: Codable, GRDBEntityType {
    public var id:Int64?
    public var dataKey:String
    public var locationName:String
    public var language:String
    public var object:Data

    public init(id:Int64, dataKey: String, object: Data, locationName: String, language: String) {
        self.dataKey = dataKey
        self.object = object
        self.locationName = locationName
        self.language = language
    }
    
    mutating public func didInsert(with rowID: Int64, for column: String?) {
        self.id = rowID
    }
}


public protocol ZADStorageType {
    func save(_ entity: ZADObjectGRDB, for nameSpace: String) throws
    func getZADByLanguage(_ language: String) throws -> [ZADObjectGRDB]?
    func clearZADBy(_ language: String) throws
}

extension GRDBContext: ZADStorageType {
    public func save(_ entity: ZADObjectGRDB, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getZADByLanguage(_ language: String) throws -> [ZADObjectGRDB]? {
        let zadByLanguage = ZADObjectGRDB.filter(Column("language") == language)
        return try dbQueue.inDatabase { db in
            try zadByLanguage.fetchAll(db)
        }
    }
    
    public func clearZADBy(_ language: String) throws  {
        try dbQueue.inDatabase { db in
            _ = try ZADObjectGRDB.filter(Column("language") == language).deleteAll(db)
        }
    }
}
