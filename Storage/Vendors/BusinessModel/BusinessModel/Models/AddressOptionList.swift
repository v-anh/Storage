//
//  AddressOptionList.swift
//  Pluto
//
//  Created by Minh Nguyen on 10/17/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

// MARK: AddressOptionList Model

@objcMembers
public final class AddressOptionList: NSObject, Codable, AutoTestInitializer {
    public let options: [AddressOption]?

    public init(options: [AddressOption]?) {
        self.options = options
    }
}
