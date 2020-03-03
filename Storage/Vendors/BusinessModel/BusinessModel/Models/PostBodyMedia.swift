//
//  PostBodyMedia.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

public enum ZrsPostBodyMedia: String {
    case type = "type"
    case data = "data"
    case url = "url"
    case width = "width"
    case height = "height"
    case deeplink = "deeplink"
    case promotionName = "internal_promotion_name"
    case description = "description"
    case media = "media"
}

@objcMembers
public final class PostBodyMedia: NSObject, Codable, AutoTestInitializer {
    public let type: String
    public let url: String
    public let width: CGFloat
    public let height: CGFloat
    public let deeplink: String
    public let internalPromotionName: String
    public let mediaDescription: String
    
    public init(type: String, url: String, width: CGFloat, height: CGFloat, deeplink: String, internalPromotionName: String, mediaDescription: String) {
        self.type = type
        self.url = url
        self.width = width
        self.height = height
        self.deeplink = deeplink
        self.internalPromotionName = internalPromotionName
        self.mediaDescription = mediaDescription
    }
}
