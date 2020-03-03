//
//  Services.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Services Model

@objcMembers
public final class Services: NSObject, Codable, AutoTestInitializer {
    public let facebookInvites: FacebookInvites?
    public let gaID: String
    public let md5: String
    public let magazineURL: String
    public let communityURL: String
    public let feedBaseUrl: String
    public let datajetApiKey: String
    public let statsDAPIKey: String
    public let statsDAppURL: String
    public let isStatsDEnabled: Bool

    public init(facebookInvites: FacebookInvites?, gaID: String, md5: String, magazineURL: String, communityURL: String, feedBaseUrl: String, datajetApiKey: String, statsDAPIKey: String, statsDAppURL: String, isStatsDEnabled: Bool) {
        self.facebookInvites = facebookInvites
        self.gaID = gaID
        self.md5 = md5
        self.magazineURL = magazineURL
        self.communityURL = communityURL
        self.feedBaseUrl = feedBaseUrl
        self.datajetApiKey = datajetApiKey
        self.statsDAPIKey = statsDAPIKey
        self.statsDAppURL = statsDAppURL
        self.isStatsDEnabled = isStatsDEnabled
    }
}
