//
//  Teaser.swift
//  Pluto
//
//  Created by NghiaTran on 3/19/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class HomeScreenTeaser: NSObject, Codable, AutoTestInitializer {
    public let deepLink: String
    public let imageUrl: String
    public let aspectRatio: Double
    public let name: String
    public let creationDate: String

    public init(deepLink: String, imageUrl: String, aspectRatio: Double, name: String, creationDate: String) {
        self.deepLink = deepLink
        self.imageUrl = imageUrl
        self.aspectRatio = aspectRatio
        self.name = name
        self.creationDate = creationDate
    }
}
