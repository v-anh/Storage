//
//  FeedStorageType.swift
//  Storage
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol FeedStorable {
    var id: Int64? { get }
    var feedName:String { get set }
    var feedPosition:Int { get set }
}

public struct FeedRGDB: Codable, FeedStorable, GRDBEntityType {
    public var id: Int64?
    public var feedName:String
    public var feedPosition:Int

    public init(id:Int64? = nil, feedName: String, feedPosition: Int) {
        self.id = id
        self.feedName = feedName
        self.feedPosition = feedPosition
    }
    
    mutating public func didInsert(with rowID: Int64, for column: String?) {
        self.id = rowID
    }
    
    static func map(_ feed: FeedStorable) -> FeedRGDB {
        return FeedRGDB(id: feed.id, feedName: feed.feedName, feedPosition: feed.feedPosition)
    }
}


public protocol FeedStorageType {
    func save(_ entity: FeedStorable, for nameSpace: String) throws
    func getFeed(_ language: String) throws -> [FeedStorable]?
}

extension GRDBContext: FeedStorageType {
    
    public func save(_ entity: FeedStorable, for nameSpace: String) throws {
        try dbQueue.inDatabase({ db in
            try FeedRGDB.map(entity).insert(db)
        })
    }

    public func getFeed(_ language: String) throws -> [FeedStorable]? {
        return try dbQueue.inDatabase { db in
            try FeedRGDB.fetchAll(db)
        }
    }
}
