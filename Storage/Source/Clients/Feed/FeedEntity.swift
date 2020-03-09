//
//  FeedEntity.swift
//  Storage
//
//  Created by Anh Tran on 3/9/20.
//  Copyright © 2020 com.zalora.Storage. All rights reserved.
//

import Foundation
import GRDB

public protocol FeedStorable {
    var id: Int64? { get }
    var feedName:String { get set }
    var feedPosition:Int { get set }
}

struct FeedRGDB: Codable, FeedStorable, GRDBEntityType {
    var id: Int64?
    var feedName:String
    var feedPosition:Int

    init(id:Int64? = nil, feedName: String, feedPosition: Int) {
        self.id = id
        self.feedName = feedName
        self.feedPosition = feedPosition
    }
    
    mutating func didInsert(with rowID: Int64, for column: String?) {
        self.id = rowID
    }
    
    static func map(_ feed: FeedStorable) -> FeedRGDB {
        return FeedRGDB(id: feed.id, feedName: feed.feedName, feedPosition: feed.feedPosition)
    }
}
