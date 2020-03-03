//
//  SegmentList.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: SegmentList Model

@objcMembers
public final class SegmentList: NSObject, Codable, AutoTestInitializer {
    public let md5: String
    public let list: [Segment]?

    public init(md5: String, list: [Segment]?) {
        self.md5 = md5
        self.list = list
    }
}
