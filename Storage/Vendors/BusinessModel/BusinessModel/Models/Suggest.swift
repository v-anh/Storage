//
//  Suggest.swift
//  Pluto
//
//  Created by Minh Nguyen on 9/5/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class Suggest: NSObject, Codable, AutoTestInitializer {
    public let suggest: String
    public let amount: Int

    public init(suggest: String, amount: Int) {
        self.suggest = suggest
        self.amount = amount
    }
}
