//
//  PostBodyAction.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class PostBodyAction: NSObject, Codable, AutoTestInitializer {
    public let label: String
    public let deeplink: String
    
    public init(label: String, deeplink: String) {
        self.label = label
        self.deeplink = deeplink
    }
}
