//
//  FeedCursorPagination.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class FeedCursorPagination: NSObject, Codable, AutoTestInitializer {
    public let nextPosts: String
    public let previousPosts: String
    
    public init(nextPosts: String, previousPosts: String) {
        self.nextPosts = nextPosts
        self.previousPosts = previousPosts
    }
}

