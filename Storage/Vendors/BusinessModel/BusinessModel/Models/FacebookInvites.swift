//
//  FacebookInvites.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: FacebookInvites Model

@objcMembers
public final class FacebookInvites: NSObject, Codable, AutoTestInitializer {
    public let invitePreviewImageURL: String
    public let inviteAppLinkURL: String
    public let backgroundImagePhonePortrait: String
    public let backgroundImagePadPortrait: String
    public let backgroundImagePadLandscape: String

    public init(invitePreviewImageURL: String, inviteAppLinkURL: String, backgroundImagePhonePortrait: String, backgroundImagePadPortrait: String, backgroundImagePadLandscape: String) {
        self.invitePreviewImageURL = invitePreviewImageURL
        self.inviteAppLinkURL = inviteAppLinkURL
        self.backgroundImagePhonePortrait = backgroundImagePhonePortrait
        self.backgroundImagePadPortrait = backgroundImagePadPortrait
        self.backgroundImagePadLandscape = backgroundImagePadLandscape
    }
}
