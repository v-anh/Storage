//
//  FilterSubOption.swift
//  Pluto
//
//  Created by NghiaTran on 2/21/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import UIKit

@objcMembers
public final class FilterSubOption: NSObject, Codable, AutoTestInitializer {
    public let lable: String
    public let value: String
    public let resultsCount: Int

    public init(lable: String, value: String, resultsCount: Int) {
        self.lable = lable
        self.value = value
        self.resultsCount = resultsCount
    }
}
