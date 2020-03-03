//
//  DeepLinkResponse.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/7/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: DeepLinkResponse Model

@objcMembers
public final class DeepLinkResponse: NSObject, Codable, AutoTestInitializer {
    public let deeplink: String

    public init(deeplink: String) {
        self.deeplink = deeplink
    }
}
