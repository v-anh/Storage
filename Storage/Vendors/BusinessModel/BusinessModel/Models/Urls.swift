//
//  Urls.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: Urls Model

@objcMembers
public final class Urls: NSObject, Codable, AutoTestInitializer {
    public let privacyPolicyURL: String
    public let aboutURL: String
    public let exchangeReturnsURL: String
    public let faqURL: String
    public let bankTransferConfirmationURL: String

    public init(privacyPolicyURL: String, aboutURL: String, exchangeReturnsURL: String, faqURL: String, bankTransferConfirmationURL: String) {
        self.privacyPolicyURL = privacyPolicyURL
        self.aboutURL = aboutURL
        self.exchangeReturnsURL = exchangeReturnsURL
        self.faqURL = faqURL
        self.bankTransferConfirmationURL = bankTransferConfirmationURL
    }
}
