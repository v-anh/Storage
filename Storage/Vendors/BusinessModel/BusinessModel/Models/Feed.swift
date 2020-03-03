//
//  Feed.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class Feed: NSObject, Codable, AutoTestInitializer {
    public let posts: [FeedPost]?
    public let paging: FeedCursorPagination?
    
    public init(posts: [FeedPost]?, paging: FeedCursorPagination?) {
        self.posts = posts
        self.paging = paging
    }
}
