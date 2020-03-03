//
//  Tutorial.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/4/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class TutorialPage: NSObject, Codable, AutoTestInitializer {
    public let name: String
    public let headerTag: String
    public let header: String
    public let headerImageUrl: String
    public let tutorialDescription: String
    public let minAppVersion: String
    public let topRatio: String
    public let image: Image?

    public init(name: String, headerTag: String, header: String, headerImageUrl: String, tutorialDescription: String, minAppVersion: String, topRatio: String, image: Image?) {
        self.name = name
        self.headerTag = headerTag
        self.header = header
        self.headerImageUrl = headerImageUrl
        self.tutorialDescription = tutorialDescription
        self.minAppVersion = minAppVersion
        self.topRatio = topRatio
        self.image = image
    }
}
