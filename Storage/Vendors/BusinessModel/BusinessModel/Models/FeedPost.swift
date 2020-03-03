//
//  FeedPost.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class FeedPost: NSObject, Codable, AutoTestInitializer {
    public let type: String
    public let id: String
    public let isPinned: Bool
    public let body: PostBody?
    
    public init(type: String, id: String, isPinned: Bool, body: PostBody?) {
        self.type = type
        self.id = id
        self.isPinned = isPinned
        self.body = body
    }
}
