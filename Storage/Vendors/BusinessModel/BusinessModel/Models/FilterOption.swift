//
//  FilterOption.swift
//  ZaloraNetworking
//
//  Created by NghiaTran on 1/29/18.
//  Copyright © 2018 ZaloraNetworking. All rights reserved.
//

import Foundation

@objcMembers
public final class FilterOption: NSObject, Codable, AutoTestInitializer {
    public let selected: Bool
    public let subOptions: [FilterSubOption]?
    public let lable: String
    public let value: String
    public let resultsCount: Int

    public init(selected: Bool, subOptions: [FilterSubOption]?, lable: String, value: String, resultsCount: Int) {
        self.selected = selected
        self.subOptions = subOptions
        self.lable = lable
        self.value = value
        self.resultsCount = resultsCount
    }
}
