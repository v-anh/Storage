//
//  PostBody.swift
//  BusinessModel
//
//  Created by Danh Dang on 11/13/19.
//  Copyright © 2019 Danh Dang. All rights reserved.
//

import Foundation

@objcMembers
public final class PostBody: NSObject, Codable, AutoTestInitializer {
    public let id: String
    public let title: String
    public let source: String
    public let endpoint: String
    public let segment: String
    public let deeplink: String
    public let language: String
    public let subtitle: String
    public let mainDescription: String
    public let secondDescription: String
    public let countdownTimerText: String
    public let countdownTimerStart: String
    public let expiredAt: String
    public let internalPromotionName: String
    public let url: String
    public let columns: Int
    public let autoScroll: Bool
    public let action: PostBodyAction?
    public let media: [PostBodyMedia]?
    
    public init(id: String,
                title: String,
                source: String,
                endpoint: String,
                segment: String,
                deeplink: String,
                language: String,
                subtitle: String,
                mainDescription: String,
                secondDescription: String,
                countdownTimerText: String,
                countdownTimerStart: String,
                expiredAt: String,
                internalPromotionName: String,
                url: String,
                columns: Int,
                autoScroll: Bool,
                action: PostBodyAction?,
                media: [PostBodyMedia]?) {
        self.id = id
        self.title = title
        self.source = source
        self.endpoint = endpoint
        self.segment = segment
        self.deeplink = deeplink
        self.language = language
        self.subtitle = subtitle
        self.mainDescription = mainDescription
        self.secondDescription = secondDescription
        self.countdownTimerText = countdownTimerText
        self.countdownTimerStart = countdownTimerStart
        self.expiredAt = expiredAt
        self.internalPromotionName = internalPromotionName
        self.url = url
        self.columns = columns
        self.autoScroll = autoScroll
        self.action = action
        self.media = media
    }
}
