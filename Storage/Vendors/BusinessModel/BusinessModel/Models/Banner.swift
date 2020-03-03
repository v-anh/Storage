//
//  CatalogBanner.swift
//  BusinessModel
//
//  Created by Danh Dang on 12/5/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class Banner: NSObject, Codable, AutoTestInitializer {
    public let imageURL: String
    public let linkURL: String
    public let adID: String

    public init(imageURL: String, linkURL: String, adID: String) {
        self.imageURL = imageURL
        self.linkURL = linkURL
        self.adID = adID
    }
}
