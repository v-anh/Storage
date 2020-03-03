//
//  FeedStorageType.swift
//  Storage
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public struct FeedRGDB:Codable, GRDBEntityType {
    public var id: Int64?
    public var feedName:String
    public var feedPosition:Int

    public init(id:Int64, feedName: String, feedPosition: Int) {
        self.feedName = feedName
        self.feedPosition = feedPosition
    }
    
    mutating public func didInsert(with rowID: Int64, for column: String?) {
        self.id = rowID
    }
}


public protocol FeedStorageType {
    func save(_ entity: FeedRGDB, for nameSpace: String) throws
    func getFeed(_ language: String) throws -> [FeedRGDB]?
}

extension GRDBContext: FeedStorageType {
    
    public func save(_ entity: FeedRGDB, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try entity.insert(db)
        })
    }

    public func getFeed(_ language: String) throws -> [FeedRGDB]? {
        return try dbQueue.inDatabase { db in
            try FeedRGDB.fetchAll(db)
        }
    }
}
