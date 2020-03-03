//
//  MediaCollection.swift
//  Pluto
//
//  Created by NghiaTran on 3/16/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Media: NSObject, Codable, AutoTestInitializer {
    public let contentType: Int
    public let meta: [String: String]?
    public let url: String

    public init(contentType: Int, meta: [String: String]?, url: String) {
        self.contentType = contentType
        self.meta = meta
        self.url = url
    }
}
