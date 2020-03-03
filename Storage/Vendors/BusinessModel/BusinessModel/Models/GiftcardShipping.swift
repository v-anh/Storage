//
//  GiftcardShipping.swift
//  BusinessModel
//
//  Created by Asim Parvez on 03/02/2020.
//  Copyright © 2020 Danh Dang. All rights reserved.
//

import Foundation

// MARK: GiftcardShipping Model

@objcMembers
public final class GiftcardShipping: NSObject, Codable, AutoTestInitializer {
    public let descriptionText: String
    public let title: String

    public init(descriptionText: String, title: String) {
        self.descriptionText = descriptionText
        self.title = title
    }
}
