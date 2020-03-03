//
//  RedirectResponse.swift
//  Pluto
//
//  Created by Danh Dang on 2/14/19.
//  Copyright © 2019 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class RedirectResponse: NSObject, Codable, AutoTestInitializer {
    public let redirectUrl: String

    public init(redirectUrl: String) {
        self.redirectUrl = redirectUrl
    }
}
