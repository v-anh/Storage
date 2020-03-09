//
//  FeedStorageType.swift
//  Storage
//
//  Created by Anh Tran on 3/3/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
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
